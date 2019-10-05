part of '../tdapi.dart';

class GetCurrentState extends TdFunction {
  dynamic extra;

  /// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState.
  ///
  GetCurrentState();

  /// Parse from a json
  GetCurrentState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getCurrentState";

  @override
  String getConstructor() => CONSTRUCTOR;
}
