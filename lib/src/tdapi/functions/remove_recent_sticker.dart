part of '../tdapi.dart';

class RemoveRecentSticker extends TdFunction {
  bool isAttached;
  var sticker;
  dynamic extra;

  /// Removes a sticker from the list of recently used stickers.
  ///[isAttached] Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers .
  /// [sticker] Sticker file to delete
  RemoveRecentSticker({this.isAttached, this.sticker});

  /// Parse from a json
  RemoveRecentSticker.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "removeRecentSticker";

  @override
  String getConstructor() => CONSTRUCTOR;
}
