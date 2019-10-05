part of '../tdapi.dart';

class WriteGeneratedFilePart extends TdFunction {
  int generationId;
  int offset;
  String data;
  dynamic extra;

  /// Writes a part of a generated file. This method is intended to be used only if the client has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file.
  ///[generationId] The identifier of the generation process .
  /// [offset] The offset from which to write the data to the file .
  /// [data] The data to write
  WriteGeneratedFilePart({this.generationId, this.offset, this.data});

  /// Parse from a json
  WriteGeneratedFilePart.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "offset": this.offset,
      "data": this.data,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "writeGeneratedFilePart";

  @override
  String getConstructor() => CONSTRUCTOR;
}
