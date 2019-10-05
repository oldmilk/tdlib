part of '../tdapi.dart';

class GetInstalledStickerSets extends TdFunction {
  bool isMasks;
  dynamic extra;

  /// Returns a list of installed sticker sets.
  ///[isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  GetInstalledStickerSets({this.isMasks});

  /// Parse from a json
  GetInstalledStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getInstalledStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
