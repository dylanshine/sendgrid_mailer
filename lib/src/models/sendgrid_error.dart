class SendGridError {
  const SendGridError({
    this.message,
    this.field,
    this.help,
    this.errorId,
    this.parameter,
  });

  SendGridError.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        field = json['field'],
        help = json['help'],
        errorId = json['error_id'],
        parameter = json['parameter'];

  final String? message;
  final String? field;
  final String? help;
  final String? errorId;
  final String? parameter;

  @override
  String toString() {
    return 'SendGridError: $message $field $help';
  }
}
