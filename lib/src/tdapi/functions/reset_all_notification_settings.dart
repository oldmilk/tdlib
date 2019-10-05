part of '../tdapi.dart';

class ResetAllNotificationSettings extends TdFunction {
  dynamic extra;

  /// Resets all notification settings to their default values. By default, all chats are unmuted, the sound is set to "default" and message previews are shown.
  ///
  ResetAllNotificationSettings();

  /// Parse from a json
  ResetAllNotificationSettings.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "resetAllNotificationSettings";

  @override
  String getConstructor() => CONSTRUCTOR;
}
