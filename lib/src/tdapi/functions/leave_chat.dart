part of '../tdapi.dart';

class LeaveChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Removes current user from chat members. Private and secret chats can't be left using this method.
  ///[chatId] Chat identifier
  LeaveChat({this.chatId});

  /// Parse from a json
  LeaveChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "leaveChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
