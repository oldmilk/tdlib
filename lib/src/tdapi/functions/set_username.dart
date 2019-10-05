part of '../tdapi.dart';

class SetUsername extends TdFunction {
  String username;
  dynamic extra;

  /// Changes the username of the current user. If something changes, updateUser will be sent.
  ///[username] The new value of the username. Use an empty string to remove the username
  SetUsername({this.username});

  /// Parse from a json
  SetUsername.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "setUsername";

  @override
  String getConstructor() => CONSTRUCTOR;
}
