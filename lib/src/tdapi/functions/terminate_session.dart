part of '../tdapi.dart';

class TerminateSession extends TdFunction {
  int sessionId;
  dynamic extra;

  /// Terminates a session of the current user.
  ///[sessionId] Session identifier
  TerminateSession({this.sessionId});

  /// Parse from a json
  TerminateSession.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "session_id": this.sessionId,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "terminateSession";

  @override
  String getConstructor() => CONSTRUCTOR;
}
