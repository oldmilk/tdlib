part of '../tdapi.dart';

class SearchStickers extends TdFunction {
  String emoji;
  int limit;
  dynamic extra;

  /// Searches for stickers from public sticker sets that correspond to a given emoji.
  ///[emoji] String representation of emoji; must be non-empty .
  /// [limit] Maximum number of stickers to be returned
  SearchStickers({this.emoji, this.limit});

  /// Parse from a json
  SearchStickers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }
  
  static const String CONSTRUCTOR = "searchStickers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
