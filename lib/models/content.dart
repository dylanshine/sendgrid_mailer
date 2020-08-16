class Content {
  const Content(this.type, this.value);
  final String type;
  final String value;

  Map<String, dynamic> toJson() => {
        'type': type,
        'value': value,
      };
}
