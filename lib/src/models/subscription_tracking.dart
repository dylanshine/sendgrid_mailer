class SubscriptionTracking {
  const SubscriptionTracking({
    this.enable,
    this.text,
    this.html,
    this.substitutionTag,
  });

  final bool? enable;
  final String? text;
  final String? html;
  final String? substitutionTag;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'text': text,
        'html': html,
        'substitution_tag': substitutionTag,
      };
}
