part of '../tdapi.dart';

class GetCreatedPublicChats extends TdFunction {
  dynamic extra;

  /// Returns a list of public chats created by the user.
  ///
  GetCreatedPublicChats();

  /// Parse from a json
  GetCreatedPublicChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getCreatedPublicChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
