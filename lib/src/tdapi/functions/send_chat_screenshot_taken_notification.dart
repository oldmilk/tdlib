part of '../tdapi.dart';

class SendChatScreenshotTakenNotification extends TdFunction {
  int chatId;
  dynamic extra;

  /// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats.
  ///[chatId] Chat identifier
  SendChatScreenshotTakenNotification({this.chatId});

  /// Parse from a json
  SendChatScreenshotTakenNotification.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "sendChatScreenshotTakenNotification";

  @override
  String getConstructor() => CONSTRUCTOR;
}
