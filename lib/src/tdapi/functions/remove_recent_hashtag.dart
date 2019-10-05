part of '../tdapi.dart';

class RemoveRecentHashtag extends TdFunction {
  String hashtag;
  dynamic extra;

  /// Removes a hashtag from the list of recently used hashtags.
  ///[hashtag] Hashtag to delete
  RemoveRecentHashtag({this.hashtag});

  /// Parse from a json
  RemoveRecentHashtag.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hashtag": this.hashtag,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "removeRecentHashtag";

  @override
  String getConstructor() => CONSTRUCTOR;
}
