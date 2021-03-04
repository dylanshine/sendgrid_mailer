import 'package:sendgrid_mailer/src/models/address.dart';

class Personalization {
  const Personalization(
    this.to, {
    this.cc,
    this.bcc,
    this.subject,
    this.headers,
    this.substitutions,
    this.customArgs,
    this.sendAt,
    this.dynamicTemplateData,
  });

  final List<Address> to;
  final List<Address>? cc;
  final List<Address>? bcc;
  final String? subject;
  final Map<String, String>? headers;
  final Map<String, String>? substitutions;
  final Map<String, String>? customArgs;
  final DateTime? sendAt;
  final Map<String, dynamic>? dynamicTemplateData;

  Map<String, dynamic> toJson() => {
        'to': to.map((e) => e.toJson()).toList(),
        'cc': cc?.map((e) => e.toJson()).toList(),
        'bcc': bcc?.map((e) => e.toJson()).toList(),
        'subject': subject,
        'headers': headers,
        'substitutions': substitutions,
        'custom_args': customArgs,
        'send_at': sendAt?.toUtc().millisecondsSinceEpoch,
        'dynamic_template_data': dynamicTemplateData,
      };
}
