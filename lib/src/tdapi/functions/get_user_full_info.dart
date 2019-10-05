part of '../tdapi.dart';

class GetUserFullInfo extends TdFunction {
  int userId;
  dynamic extra;

  /// Returns full information about a user by their identifier.
  ///[userId] User identifier
  GetUserFullInfo({this.userId});

  /// Parse from a json
  GetUserFullInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "user_id": this.userId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getUserFullInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
