part of '../tdapi.dart';

class FinishFileGeneration extends TdFunction {
  int generationId;
  Error error;
  dynamic extra;

  /// Finishes the file generation.
  ///[generationId] The identifier of the generation process.
  /// [error] If set, means that file generation has failed and should be terminated
  FinishFileGeneration({this.generationId, this.error});

  /// Parse from a json
  FinishFileGeneration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": this.generationId,
      "error": this.error.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "finishFileGeneration";

  @override
  String getConstructor() => CONSTRUCTOR;
}
