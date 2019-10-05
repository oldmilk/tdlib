part of '../tdapi.dart';

class GetPasswordState extends TdFunction {
  dynamic extra;

  /// Returns the current state of 2-step verification.
  ///
  GetPasswordState();

  /// Parse from a json
  GetPasswordState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }
  
  static const String CONSTRUCTOR = "getPasswordState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
