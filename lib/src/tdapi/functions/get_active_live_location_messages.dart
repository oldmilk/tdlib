part of '../tdapi.dart';

class GetActiveLiveLocationMessages extends TdFunction {
  dynamic extra;

  /// Returns all active live locations that should be updated by the client. The list is persistent across application restarts only if the message database is used.
  ///
  GetActiveLiveLocationMessages();

  /// Parse from a json
  GetActiveLiveLocationMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getActiveLiveLocationMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
