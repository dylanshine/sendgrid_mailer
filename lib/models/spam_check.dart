class SpamCheck {
  const SpamCheck({
    this.enable,
    this.threshhold,
    this.postToUrl,
  });

  final bool enable;
  final int threshhold;
  final String postToUrl;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'threshhold': threshhold,
        'post_to_url': postToUrl,
      };
}
