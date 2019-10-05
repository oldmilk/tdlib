part of '../tdapi.dart';

class GetSavedAnimations extends TdFunction {
  dynamic extra;

  /// Returns saved animations.
  ///
  GetSavedAnimations();

  /// Parse from a json
  GetSavedAnimations.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getSavedAnimations";

  @override
  String getConstructor() => CONSTRUCTOR;
}
