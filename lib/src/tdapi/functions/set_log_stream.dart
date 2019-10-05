part of '../tdapi.dart';

class SetLogStream extends TdFunction {
  var logStream;
  dynamic extra;

  /// Sets new log stream for internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[logStream] New log stream
  SetLogStream({this.logStream});

  /// Parse from a json
  SetLogStream.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "log_stream": this.logStream.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "setLogStream";

  @override
  String getConstructor() => CONSTRUCTOR;
}
