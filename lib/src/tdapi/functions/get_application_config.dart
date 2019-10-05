part of '../tdapi.dart';

class GetApplicationConfig extends TdFunction {
  dynamic extra;

  /// Returns application config, provided by the server. Can be called before authorization.
  ///
  GetApplicationConfig();

  /// Parse from a json
  GetApplicationConfig.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }
  
  static const String CONSTRUCTOR = "getApplicationConfig";

  @override
  String getConstructor() => CONSTRUCTOR;
}
