part of '../tdapi.dart';

class GetBlockedUsers extends TdFunction {
  int offset;
  int limit;
  dynamic extra;

  /// Returns users that were blocked by the current user.
  ///[offset] Number of users to skip in the result; must be non-negative .
  /// [limit] Maximum number of users to return; up to 100
  GetBlockedUsers({this.offset, this.limit});

  /// Parse from a json
  GetBlockedUsers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "getBlockedUsers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
