part of '../tdapi.dart';

class GetTopChats extends TdFunction {
  var category;
  int limit;
  dynamic extra;

  /// Returns a list of frequently used chats. Supported only if the chat info database is enabled.
  ///[category] Category of chats to be returned .
  /// [limit] Maximum number of chats to be returned; up to 30
  GetTopChats({this.category, this.limit});

  /// Parse from a json
  GetTopChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "category": this.category.toJson(),
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getTopChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
