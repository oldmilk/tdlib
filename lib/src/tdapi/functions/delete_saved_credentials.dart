part of '../tdapi.dart';

class DeleteSavedCredentials extends TdFunction {
  dynamic extra;

  /// Deletes saved credentials for all payment provider bots.
  ///
  DeleteSavedCredentials();

  /// Parse from a json
  DeleteSavedCredentials.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "deleteSavedCredentials";

  @override
  String getConstructor() => CONSTRUCTOR;
}
