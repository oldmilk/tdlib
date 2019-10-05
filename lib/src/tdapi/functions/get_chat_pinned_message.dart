part of '../tdapi.dart';

class GetChatPinnedMessage extends TdFunction {
  int chatId;
  dynamic extra;

  /// Returns information about a pinned chat message.
  ///[chatId] Identifier of the chat the message belongs to
  GetChatPinnedMessage({this.chatId});

  /// Parse from a json
  GetChatPinnedMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getChatPinnedMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
