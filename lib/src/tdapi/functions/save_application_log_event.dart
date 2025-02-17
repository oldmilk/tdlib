part of '../tdapi.dart';

class SaveApplicationLogEvent extends TdFunction {
  String type;
  int chatId;
  var data;
  dynamic extra;

  /// Saves application log event on the server. Can be called before authorization.
  ///[type] Event type .
  /// [chatId] Optional chat identifier, associated with the event .
  /// [data] The log event data
  SaveApplicationLogEvent({this.type, this.chatId, this.data});

  /// Parse from a json
  SaveApplicationLogEvent.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "chat_id": this.chatId,
      "data": this.data.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "saveApplicationLogEvent";

  @override
  String getConstructor() => CONSTRUCTOR;
}
