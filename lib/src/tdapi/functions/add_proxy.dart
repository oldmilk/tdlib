part of '../tdapi.dart';

class AddProxy extends TdFunction {
  String server;
  int port;
  bool enable;
  var type;
  dynamic extra;

  /// Adds a proxy server for network requests. Can be called before authorization.
  ///[server] Proxy server IP address .
  /// [port] Proxy server port .
  /// [enable] True, if the proxy should be enabled .
  /// [type] Proxy type
  AddProxy({this.server, this.port, this.enable, this.type});

  /// Parse from a json
  AddProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "server": this.server,
      "port": this.port,
      "enable": this.enable,
      "type": this.type.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "addProxy";

  @override
  String getConstructor() => CONSTRUCTOR;
}
