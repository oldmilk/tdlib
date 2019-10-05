part of '../tdapi.dart';

class ResendPhoneNumberConfirmationCode extends TdFunction {
  dynamic extra;

  /// Resends phone number confirmation code.
  ///
  ResendPhoneNumberConfirmationCode();

  /// Parse from a json
  ResendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "resendPhoneNumberConfirmationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
