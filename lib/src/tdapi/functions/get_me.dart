part of '../tdapi.dart';

class GetMe extends TdFunction {
  dynamic extra;

  /// Returns the current user.
  ///
  GetMe();

  /// Parse from a json
  GetMe.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getMe";

  @override
  String getConstructor() => CONSTRUCTOR;
}
