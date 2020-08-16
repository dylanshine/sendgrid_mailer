import 'dart:convert';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'package:sendgrid_mailer/src/models/email.dart';
import 'package:sendgrid_mailer/src/models/response_status_code.dart';
import 'package:sendgrid_mailer/src/models/sendgrid_error.dart';

const _apiURL = "https://api.sendgrid.com/v3/mail/send";

class Mailer {
  Mailer(this._apiKey);

  final String _apiKey;

  Future<Result<void>> send(Email email) async {
    var headers = Map<String, String>();
    headers['Authorization'] = 'Bearer $_apiKey';
    headers['Content-Type'] = 'application/json';

    final response = await http.post(
      _apiURL,
      headers: headers,
      body: jsonEncode(email.toJson()),
    );

    if (ResponseStatusCode.SUCCESS_CODES.contains(response.statusCode)) {
      return Result<void>.value({});
    } else if (ResponseStatusCode.ERROR_CODES.contains(response.statusCode)) {
      final Map<String, dynamic> body = json.decode(response.body);
      return Result<void>.error(
          body['errors'].map((e) => SendGridError.fromJson(e)));
    } else {
      return Result<void>.error(
        [
          SendGridError(message: 'Status Code: ${response.statusCode}'),
        ],
      );
    }
  }
}
