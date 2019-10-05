part of '../tdapi.dart';

class GetUserPrivacySettingRules extends TdFunction {
  var setting;
  dynamic extra;

  /// Returns the current privacy settings.
  ///[setting] The privacy setting
  GetUserPrivacySettingRules({this.setting});

  /// Parse from a json
  GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": this.setting.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getUserPrivacySettingRules";

  @override
  String getConstructor() => CONSTRUCTOR;
}
