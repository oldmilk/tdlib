part of '../tdapi.dart';

class GetWallpapers extends TdFunction {
  dynamic extra;

  /// Returns background wallpapers.
  ///
  GetWallpapers();

  /// Parse from a json
  GetWallpapers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getWallpapers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
