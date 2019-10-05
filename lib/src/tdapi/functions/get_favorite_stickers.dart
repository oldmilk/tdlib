part of '../tdapi.dart';

class GetFavoriteStickers extends TdFunction {
  dynamic extra;

  /// Returns favorite stickers.
  ///
  GetFavoriteStickers();

  /// Parse from a json
  GetFavoriteStickers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getFavoriteStickers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
