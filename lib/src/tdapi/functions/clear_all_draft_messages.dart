part of '../tdapi.dart';

class ClearAllDraftMessages extends TdFunction {
  bool excludeSecretChats;
  dynamic extra;

  /// Clears draft messages in all chats.
  ///[excludeSecretChats] If true, local draft messages in secret chats will not be cleared
  ClearAllDraftMessages({this.excludeSecretChats});

  /// Parse from a json
  ClearAllDraftMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "exclude_secret_chats": this.excludeSecretChats,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "clearAllDraftMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
