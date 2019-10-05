part of '../tdapi.dart';

class ReorderInstalledStickerSets extends TdFunction {
  bool isMasks;
  List<int> stickerSetIds;
  dynamic extra;

  /// Changes the order of installed sticker sets.
  ///[isMasks] Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets .
  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct order
  ReorderInstalledStickerSets({this.isMasks, this.stickerSetIds});

  /// Parse from a json
  ReorderInstalledStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "sticker_set_ids": this.stickerSetIds,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "reorderInstalledStickerSets";

  @override
  String getConstructor() => CONSTRUCTOR;
}
