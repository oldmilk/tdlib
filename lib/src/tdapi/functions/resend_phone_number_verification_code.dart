part of '../tdapi.dart';

class ResendPhoneNumberVerificationCode extends TdFunction {
  dynamic extra;

  /// Re-sends the code to verify a phone number to be added to a user's Telegram Passport.
  ///
  ResendPhoneNumberVerificationCode();

  /// Parse from a json
  ResendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "resendPhoneNumberVerificationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
