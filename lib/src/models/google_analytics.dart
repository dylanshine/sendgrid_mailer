class GoogleAnalytics {
  const GoogleAnalytics({
    this.enable,
    this.utmSource,
    this.utmMedium,
    this.utmTerm,
    this.utmContent,
    this.utmCampaign,
  });

  final bool? enable;
  final String? utmSource;
  final String? utmMedium;
  final String? utmTerm;
  final String? utmContent;
  final String? utmCampaign;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'utm_source': utmSource,
        'utm_medium': utmMedium,
        'utm_term': utmTerm,
        'utm_content': utmContent,
        'utm_campaign': utmCampaign,
      };
}
