part of '../tdapi.dart';

class GetChat extends TdFunction {
  int chatId;
  dynamic extra;

  /// Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
  ///[chatId] Chat identifier
  GetChat({this.chatId});

  /// Parse from a json
  GetChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "chat_id": this.chatId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
