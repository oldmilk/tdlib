part of '../tdapi.dart';

class GetStickerSet extends TdFunction {
  int setId;
  dynamic extra;

  /// Returns information about a sticker set by its identifier.
  ///[setId] Identifier of the sticker set
  GetStickerSet({this.setId});

  /// Parse from a json
  GetStickerSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "set_id": this.setId, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getStickerSet";

  @override
  String getConstructor() => CONSTRUCTOR;
}
