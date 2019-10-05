part of '../tdapi.dart';

class GetContacts extends TdFunction {
  dynamic extra;

  /// Returns all user contacts.
  ///
  GetContacts();

  /// Parse from a json
  GetContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getContacts";

  @override
  String getConstructor() => CONSTRUCTOR;
}
