part of '../tdapi.dart';

class SetFileGenerationProgress extends TdFunction {
  int generationId;
  int expectedSize;
  int localPrefixSize;
  dynamic extra;

  /// Informs TDLib on a file generation prograss.
  ///[generationId] The identifier of the generation process.
  /// [expectedSize] Expected size of the generated file, in bytes; 0 if unknown.
  /// [localPrefixSize] The number of bytes already generated
  SetFileGenerationProgress(
      {this.generationId, this.expectedSize, this.localPrefixSize});

  /// Parse from a json
  SetFileGenerationProgress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "expected_size": this.expectedSize,
      "local_prefix_size": this.localPrefixSize,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "setFileGenerationProgress";

  @override
  String getConstructor() => CONSTRUCTOR;
}
