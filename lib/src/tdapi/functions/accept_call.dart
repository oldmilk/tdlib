part of '../tdapi.dart';

class AcceptCall extends TdFunction {
  int callId;
  CallProtocol protocol;
  dynamic extra;

  /// Accepts an incoming call.
  ///[callId] Call identifier .
  /// [protocol] Description of the call protocols supported by the client
  AcceptCall({this.callId, this.protocol});

  /// Parse from a json
  AcceptCall.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "protocol": this.protocol.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "acceptCall";

  @override
  String getConstructor() => CONSTRUCTOR;
}
