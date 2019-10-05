part of '../tdapi.dart';

class SendEmailAddressVerificationCode extends TdFunction {
  String emailAddress;
  dynamic extra;

  /// Sends a code to verify an email address to be added to a user's Telegram Passport.
  ///[emailAddress] Email address
  SendEmailAddressVerificationCode({this.emailAddress});

  /// Parse from a json
  SendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address": this.emailAddress,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "sendEmailAddressVerificationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
