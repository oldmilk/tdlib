part of '../tdapi.dart';

class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  int supergroupId;
  bool isAllHistoryAvailable;
  dynamic extra;

  /// Toggles whether the message history of a supergroup is available to new members; requires appropriate administrator rights in the supergroup..
  ///[supergroupId] The identifier of the supergroup .
  /// [isAllHistoryAvailable] The new value of is_all_history_available
  ToggleSupergroupIsAllHistoryAvailable(
      {this.supergroupId, this.isAllHistoryAvailable});

  /// Parse from a json
  ToggleSupergroupIsAllHistoryAvailable.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "is_all_history_available": this.isAllHistoryAvailable,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "toggleSupergroupIsAllHistoryAvailable";

  @override
  String getConstructor() => CONSTRUCTOR;
}
