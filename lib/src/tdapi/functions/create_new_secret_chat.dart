part of '../tdapi.dart';

class CreateNewSecretChat extends TdFunction {
  int userId;
  dynamic extra;

  /// Creates a new secret chat. Returns the newly created chat.
  ///[userId] Identifier of the target user
  CreateNewSecretChat({this.userId});

  /// Parse from a json
  CreateNewSecretChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "user_id": this.userId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "createNewSecretChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
