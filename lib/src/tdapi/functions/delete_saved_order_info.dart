part of '../tdapi.dart';

class DeleteSavedOrderInfo extends TdFunction {
  dynamic extra;

  /// Deletes saved order info.
  ///
  DeleteSavedOrderInfo();

  /// Parse from a json
  DeleteSavedOrderInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "deleteSavedOrderInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
