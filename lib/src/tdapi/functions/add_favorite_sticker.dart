part of '../tdapi.dart';

class AddFavoriteSticker extends TdFunction {
  var sticker;
  dynamic extra;

  /// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list.
  ///[sticker] Sticker file to add
  AddFavoriteSticker({this.sticker});

  /// Parse from a json
  AddFavoriteSticker.fromJson(Map<String, dynamic> json);

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

  static const String CONSTRUCTOR = "addFavoriteSticker";

  @override
  String getConstructor() => CONSTRUCTOR;
}
