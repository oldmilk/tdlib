part of '../tdapi.dart';

class GetSupportUser extends TdFunction {
  dynamic extra;

  /// Returns a user that can be contacted to get support.
  ///
  GetSupportUser();

  /// Parse from a json
  GetSupportUser.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getSupportUser";

  @override
  String getConstructor() => CONSTRUCTOR;
}
