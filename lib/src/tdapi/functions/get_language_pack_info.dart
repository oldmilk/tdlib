part of '../tdapi.dart';

class GetLanguagePackInfo extends TdFunction {
  String languagePackId;
  dynamic extra;

  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization.
  ///[languagePackId] Language pack identifier
  GetLanguagePackInfo({this.languagePackId});

  /// Parse from a json
  GetLanguagePackInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getLanguagePackInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
