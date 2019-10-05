part of '../tdapi.dart';

class SetChatDraftMessage extends TdFunction {
  int chatId;
  DraftMessage draftMessage;
  dynamic extra;

  /// Changes the draft message in a chat.
  ///[chatId] Chat identifier .
  /// [draftMessage] New draft message; may be null
  SetChatDraftMessage({this.chatId, this.draftMessage});

  /// Parse from a json
  SetChatDraftMessage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "draft_message": this.draftMessage.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "setChatDraftMessage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
