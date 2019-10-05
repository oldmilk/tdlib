part of '../tdapi.dart';

class ChangeStickerSet extends TdFunction {
  int setId;
  bool isInstalled;
  bool isArchived;
  dynamic extra;

  /// Installs.
  ///
  ChangeStickerSet({this.setId, this.isInstalled, this.isArchived});

  /// Parse from a json
  ChangeStickerSet.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "is_installed": this.isInstalled,
      "is_archived": this.isArchived,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "changeStickerSet";

  @override
  String getConstructor() => CONSTRUCTOR;
}
