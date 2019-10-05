part of '../tdapi.dart';

class ClearRecentlyFoundChats extends TdFunction {
  dynamic extra;

  /// Clears the list of recently found chats.
  ///
  ClearRecentlyFoundChats();

  /// Parse from a json
  ClearRecentlyFoundChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "clearRecentlyFoundChats";

  @override
  String getConstructor() => CONSTRUCTOR;
}
