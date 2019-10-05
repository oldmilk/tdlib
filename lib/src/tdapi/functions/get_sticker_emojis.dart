part of '../tdapi.dart';

class GetStickerEmojis extends TdFunction {
  var sticker;
  dynamic extra;

  /// Returns emoji corresponding to a sticker.
  ///[sticker] Sticker file identifier
  GetStickerEmojis({this.sticker});

  /// Parse from a json
  GetStickerEmojis.fromJson(Map<String, dynamic> json);

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

  static const String CONSTRUCTOR = "getStickerEmojis";

  @override
  String getConstructor() => CONSTRUCTOR;
}
