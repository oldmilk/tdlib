part of '../tdapi.dart';

class GetRecentInlineBots extends TdFunction {
  dynamic extra;

  /// Returns up to 20 recently used inline bots in the order of their last usage.
  ///
  GetRecentInlineBots();

  /// Parse from a json
  GetRecentInlineBots.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getRecentInlineBots";

  @override
  String getConstructor() => CONSTRUCTOR;
}
