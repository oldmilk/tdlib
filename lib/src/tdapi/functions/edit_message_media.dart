part of '../tdapi.dart';

class EditMessageMedia extends TdFunction {
  int chatId;
  int messageId;
  var replyMarkup;
  var inputMessageContent;
  dynamic extra;

  /// Edits the content of a message with an animation, an audio, a document, a photo or a video. The media in the message can't be replaced if the message was set to self-destruct. Media can't be replaced by self-destructing media. Media in an album can be edited only to contain a photo or a video. Returns the edited message after the edit is completed on the server side.
  ///[chatId] The chat the message belongs to .
  /// [messageId] Identifier of the message .
  /// [replyMarkup] The new message reply markup; for bots only .
  /// [inputMessageContent] New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo
  EditMessageMedia(
      {this.chatId,
      this.messageId,
      this.replyMarkup,
      this.inputMessageContent});

  /// Parse from a json
  EditMessageMedia.fromJson(Map<String, dynamic> json);

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

  static const String CONSTRUCTOR = "editMessageMedia";

  @override
  String getConstructor() => CONSTRUCTOR;
}
