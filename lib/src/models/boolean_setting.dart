class BooleanSetting {
  const BooleanSetting({this.enable});
  final bool? enable;

  Map<String, dynamic> toJson() => {
        'enable': enable,
      };
}
