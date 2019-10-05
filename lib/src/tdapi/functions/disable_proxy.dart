part of '../tdapi.dart';

class DisableProxy extends TdFunction {
  dynamic extra;

  /// Disables the currently enabled proxy. Can be called before authorization.
  ///
  DisableProxy();

  /// Parse from a json
  DisableProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "disableProxy";

  @override
  String getConstructor() => CONSTRUCTOR;
}
