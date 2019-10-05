part of '../tdapi.dart';

class RemoveSavedAnimation extends TdFunction {
  var animation;
  dynamic extra;

  /// Removes an animation from the list of saved animations.
  ///[animation] Animation file to be removed
  RemoveSavedAnimation({this.animation});

  /// Parse from a json
  RemoveSavedAnimation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "removeSavedAnimation";

  @override
  String getConstructor() => CONSTRUCTOR;
}
