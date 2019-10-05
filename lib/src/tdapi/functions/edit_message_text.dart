part of '../tdapi.dart';

class EditMessageText extends TdFunction {
  int chatId;
  int messageId;
  var replyMarkup;
  var inputMessageContent;
  dynamic extra;

  /// Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side.
  ///[chatId] The chat the message belongs to .
  /// [messageId] Identifier of the message .
  /// [replyMarkup] The new message reply markup; for bots only .
  /// [inputMessageContent] New text content of the message. Should be of type InputMessageText
  EditMessageText(
      {this.chatId,
      this.messageId,
      this.replyMarkup,
      this.inputMessageContent});

  /// Parse from a json
  EditMessageText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "editMessageText";

  @override
  String getConstructor() => CONSTRUCTOR;
}
