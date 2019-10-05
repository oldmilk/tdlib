part of '../tdapi.dart';

class DeleteProfilePhoto extends TdFunction {
  int profilePhotoId;
  dynamic extra;

  /// Deletes a profile photo. If something changes, updateUser will be sent.
  ///[profilePhotoId] Identifier of the profile photo to delete
  DeleteProfilePhoto({this.profilePhotoId});

  /// Parse from a json
  DeleteProfilePhoto.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "profile_photo_id": this.profilePhotoId,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "deleteProfilePhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}
