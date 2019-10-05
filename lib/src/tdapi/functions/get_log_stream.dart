part of '../tdapi.dart';

class GetLogStream extends TdFunction {
  dynamic extra;

  /// Returns information about currently used log stream for internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///
  GetLogStream();

  /// Parse from a json
  GetLogStream.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getLogStream";

  @override
  String getConstructor() => CONSTRUCTOR;
}
