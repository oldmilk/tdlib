part of '../tdapi.dart';

class GetMessage extends TdFunction {
  int chatId;
  int messageId;
  dynamic extra;

  /// Returns information about a message.
  ///[chatId] Identifier of the chat the message belongs to .
  /// [messageId] Identifier of the message to get
  GetMessage({this.chatId, this.messageId});

  /// Parse from a json
  GetMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
