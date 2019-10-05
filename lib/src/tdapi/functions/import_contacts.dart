part of '../tdapi.dart';

class ImportContacts extends TdFunction {
  List<Contact> contacts;
  dynamic extra;

  /// Adds new contacts or edits existing contacts; contacts' user identifiers are ignored.
  ///[contacts] The list of contacts to import or edit, contact's vCard are ignored and are not imported
  ImportContacts({this.contacts});

  /// Parse from a json
  ImportContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contacts": this.contacts.map((listItem) => listItem.toJson()).toList(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "importContacts";

  @override
  String getConstructor() => CONSTRUCTOR;
}
