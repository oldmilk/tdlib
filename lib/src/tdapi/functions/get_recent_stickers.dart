part of '../tdapi.dart';

class GetRecentStickers extends TdFunction {
  bool isAttached;
  dynamic extra;

  /// Returns a list of recently used stickers.
  ///[isAttached] Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
  GetRecentStickers({this.isAttached});

  /// Parse from a json
  GetRecentStickers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getRecentStickers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
