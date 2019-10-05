part of '../tdapi.dart';

class TestGetDifference extends TdFunction {
  dynamic extra;

  /// Forces an updates.getDifference call to the Telegram servers; for testing only.
  ///
  TestGetDifference();

  /// Parse from a json
  TestGetDifference.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "testGetDifference";

  @override
  String getConstructor() => CONSTRUCTOR;
}
