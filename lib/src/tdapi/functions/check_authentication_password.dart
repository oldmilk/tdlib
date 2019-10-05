part of '../tdapi.dart';

class CheckAuthenticationPassword extends TdFunction {
  String password;
  dynamic extra;

  /// Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword.
  ///[password] The password to check
  CheckAuthenticationPassword({this.password});

  /// Parse from a json
  CheckAuthenticationPassword.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "checkAuthenticationPassword";

  @override
  String getConstructor() => CONSTRUCTOR;
}
