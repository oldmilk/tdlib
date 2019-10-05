part of '../tdapi.dart';

class SetChatMemberStatus extends TdFunction {
  int chatId;
  int userId;
  var status;
  dynamic extra;

  /// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat; instead, use addChatMember. The chat member status will not be changed until it has been synchronized with the server.
  ///[chatId] Chat identifier .
  /// [userId] User identifier .
  /// [status] The new status of the member in the chat
  SetChatMemberStatus({this.chatId, this.userId, this.status});

  /// Parse from a json
  SetChatMemberStatus.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "status": this.status.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "setChatMemberStatus";

  @override
  String getConstructor() => CONSTRUCTOR;
}
