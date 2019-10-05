part of '../tdapi.dart';

class DisconnectAllWebsites extends TdFunction {
  dynamic extra;

  /// Disconnects all websites from the current user's Telegram account.
  ///
  DisconnectAllWebsites();

  /// Parse from a json
  DisconnectAllWebsites.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "disconnectAllWebsites";

  @override
  String getConstructor() => CONSTRUCTOR;
}
