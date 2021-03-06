class Footer {
  const Footer({
    this.enable,
    this.text,
    this.html,
  });

  final bool? enable;
  final String? text;
  final String? html;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'text': text,
        'html': html,
      };
}
