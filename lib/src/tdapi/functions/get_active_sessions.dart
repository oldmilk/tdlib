part of '../tdapi.dart';

class GetActiveSessions extends TdFunction {
  dynamic extra;

  /// Returns all active sessions of the current user.
  ///
  GetActiveSessions();

  /// Parse from a json
  GetActiveSessions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getActiveSessions";

  @override
  String getConstructor() => CONSTRUCTOR;
}
