part of '../tdapi.dart';

class SetAlarm extends TdFunction {
  double seconds;
  dynamic extra;

  /// Succeeds after a specified amount of time has passed. Can be called before authorization. Can be called before initialization.
  ///[seconds] Number of seconds before the function returns
  SetAlarm({this.seconds});

  /// Parse from a json
  SetAlarm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "seconds": this.seconds,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "setAlarm";

  @override
  String getConstructor() => CONSTRUCTOR;
}
