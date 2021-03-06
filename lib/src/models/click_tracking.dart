class ClickTracking {
  const ClickTracking({
    this.enable,
    this.enableText,
  });

  final bool? enable;
  final bool? enableText;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'enable_text': enableText,
      };
}
