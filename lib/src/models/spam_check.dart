class SpamCheck {
  const SpamCheck({
    this.enable,
    this.threshhold,
    this.postToURL,
  });

  final bool? enable;
  final int? threshhold;
  final String? postToURL;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'threshhold': threshhold,
        'post_to_url': postToURL,
      };
}
