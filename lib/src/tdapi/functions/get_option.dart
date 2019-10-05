part of '../tdapi.dart';

class GetOption extends TdFunction {
  String name;
  dynamic extra;

  /// Returns the value of an option by its name. (Check the list of available options on https.
  ///[name] The name of the option
  GetOption({this.name});

  /// Parse from a json
  GetOption.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "name": this.name, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getOption";

  @override
  String getConstructor() => CONSTRUCTOR;
}
