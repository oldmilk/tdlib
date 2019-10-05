part of '../tdapi.dart';

class GetBasicGroup extends TdFunction {
  int basicGroupId;
  dynamic extra;

  /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot.
  ///[basicGroupId] Basic group identifier
  GetBasicGroup({this.basicGroupId});

  /// Parse from a json
  GetBasicGroup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": this.basicGroupId,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getBasicGroup";

  @override
  String getConstructor() => CONSTRUCTOR;
}
