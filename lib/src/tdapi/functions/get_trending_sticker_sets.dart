part of '../tdapi.dart';

class GetTrendingStickerSets extends TdFunction {
  dynamic extra;

  /// Returns a list of trending sticker sets.
  ///
  GetTrendingStickerSets();

  /// Parse from a json
  GetTrendingStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getTrendingStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
