part of '../tdapi.dart';

class GetDeepLinkInfo extends TdFunction {
  String link;
  dynamic extra;

  /// Returns information about a tg.
  ///
  GetDeepLinkInfo({this.link});

  /// Parse from a json
  GetDeepLinkInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "link": this.link, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getDeepLinkInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
