part of '../tdapi.dart';

class CheckPhoneNumberConfirmationCode extends TdFunction {
  String code;
  dynamic extra;

  /// Checks phone number confirmation code.
  ///[code] The phone number confirmation code
  CheckPhoneNumberConfirmationCode({this.code});

  /// Parse from a json
  CheckPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "code": this.code, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "checkPhoneNumberConfirmationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
