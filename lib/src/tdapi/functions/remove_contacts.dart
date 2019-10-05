part of '../tdapi.dart';

class RemoveContacts extends TdFunction {
  List<int> userIds;
  dynamic extra;

  /// Removes users from the contact list.
  ///[userIds] Identifiers of users to be deleted
  RemoveContacts({this.userIds});

  /// Parse from a json
  RemoveContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "removeContacts";

  @override
  String getConstructor() => CONSTRUCTOR;
}
