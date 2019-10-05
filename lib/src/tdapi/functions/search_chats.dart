part of '../tdapi.dart';

class SearchChats extends TdFunction {
  String query;
  int limit;
  dynamic extra;

  /// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the chat list.
  ///[query] Query to search for. If the query is empty, returns up to 20 recently found chats .
  /// [limit] Maximum number of chats to be returned
  SearchChats({this.query, this.limit});

  /// Parse from a json
  SearchChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "searchChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
