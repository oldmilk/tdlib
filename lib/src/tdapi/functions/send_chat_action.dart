part of '../tdapi.dart';

class SendChatAction extends TdFunction {
  int chatId;
  var action;
  dynamic extra;

  /// Sends a notification about user activity in a chat.
  ///[chatId] Chat identifier .
  /// [action] The action description
  SendChatAction({this.chatId, this.action});

  /// Parse from a json
  SendChatAction.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "action": this.action.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "sendChatAction";

  @override
  String getConstructor() => CONSTRUCTOR;
}
