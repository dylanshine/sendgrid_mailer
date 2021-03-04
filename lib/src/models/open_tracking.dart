class OpenTracking {
  const OpenTracking({
    this.enable,
    this.substitutionTag,
  });

  final bool? enable;
  final String? substitutionTag;

  Map<String, dynamic> toJson() => {
        'enable': enable,
        'substitution_tag': substitutionTag,
      };
}
