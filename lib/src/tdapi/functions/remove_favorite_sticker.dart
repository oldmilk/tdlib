part of '../tdapi.dart';

class RemoveFavoriteSticker extends TdFunction {
  var sticker;
  dynamic extra;

  /// Removes a sticker from the list of favorite stickers.
  ///[sticker] Sticker file to delete from the list
  RemoveFavoriteSticker({this.sticker});

  /// Parse from a json
  RemoveFavoriteSticker.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "removeFavoriteSticker";

  @override
  String getConstructor() => CONSTRUCTOR;
}
