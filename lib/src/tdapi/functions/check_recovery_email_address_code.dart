part of '../tdapi.dart';

class CheckRecoveryEmailAddressCode extends TdFunction {
  String code;
  dynamic extra;

  /// Checks the 2-step verification recovery email address verification code.
  ///[code] Verification code
  CheckRecoveryEmailAddressCode({this.code});

  /// Parse from a json
  CheckRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "code": this.code, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "checkRecoveryEmailAddressCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
