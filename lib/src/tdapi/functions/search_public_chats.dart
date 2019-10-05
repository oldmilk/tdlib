part of '../tdapi.dart';

class SearchPublicChats extends TdFunction {
  String query;
  dynamic extra;

  /// Searches public chats by looking for specified query in their username and title. Currently only private chats, supergroups and channels can be public. Returns a meaningful number of results. Returns nothing if the length of the searched username prefix is less than 5. Excludes private chats with contacts and chats from the chat list from the results.
  ///[query] Query to search for
  SearchPublicChats({this.query});

  /// Parse from a json
  SearchPublicChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "query": this.query, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "searchPublicChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
