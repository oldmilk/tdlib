part of '../tdapi.dart';

class GetProxies extends TdFunction {
  dynamic extra;

  /// Returns list of proxies that are currently set up. Can be called before authorization.
  ///
  GetProxies();

  /// Parse from a json
  GetProxies.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getProxies";

  @override
  String getConstructor() => CONSTRUCTOR;
}
