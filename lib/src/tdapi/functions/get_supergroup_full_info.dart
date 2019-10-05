part of '../tdapi.dart';

class GetSupergroupFullInfo extends TdFunction {
  int supergroupId;
  dynamic extra;

  /// Returns full information about a supergroup or channel by its identifier, cached for up to 1 minute.
  ///[supergroupId] Supergroup or channel identifier
  GetSupergroupFullInfo({this.supergroupId});

  /// Parse from a json
  GetSupergroupFullInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getSupergroupFullInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
