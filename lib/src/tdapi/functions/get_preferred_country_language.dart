part of '../tdapi.dart';

class GetPreferredCountryLanguage extends TdFunction {
  String countryCode;
  dynamic extra;

  /// Returns an IETF language tag of the language preferred in the country, which should be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown.
  ///[countryCode] A two-letter ISO 3166-1 alpha-2 country code
  GetPreferredCountryLanguage({this.countryCode});

  /// Parse from a json
  GetPreferredCountryLanguage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country_code": this.countryCode,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getPreferredCountryLanguage";

  @override
  String getConstructor() => CONSTRUCTOR;
}
