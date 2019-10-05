part of '../tdapi.dart';

class TestNetwork extends TdFunction {
  dynamic extra;

  /// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization.
  ///
  TestNetwork();

  /// Parse from a json
  TestNetwork.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "testNetwork";

  @override
  String getConstructor() => CONSTRUCTOR;
}
