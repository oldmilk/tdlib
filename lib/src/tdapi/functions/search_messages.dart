part of '../tdapi.dart';

class SearchMessages extends TdFunction {
  String query;
  int offsetDate;
  int offsetChatId;
  int offsetMessageId;
  int limit;
  dynamic extra;

  /// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).. For optimal performance the number of returned messages is chosen by the library.
  ///[query] Query to search for.
  /// [offsetDate] The date of the message starting from which the results should be fetched. Use 0 or any date in the future to get results from the last message.
  /// [offsetChatId] The chat identifier of the last found message, or 0 for the first request.
  /// [offsetMessageId] The message identifier of the last found message, or 0 for the first request.
  /// [limit] The maximum number of messages to be returned, up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  SearchMessages(
      {this.query,
      this.offsetDate,
      this.offsetChatId,
      this.offsetMessageId,
      this.limit});

  /// Parse from a json
  SearchMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "offset_date": this.offsetDate,
      "offset_chat_id": this.offsetChatId,
      "offset_message_id": this.offsetMessageId,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }
  
  static const String CONSTRUCTOR = "searchMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
