part of '../tdapi.dart';

class AnswerCustomQuery extends TdFunction {
  int customQueryId;
  String data;
  dynamic extra;

  /// Answers a custom query; for bots only.
  ///[customQueryId] Identifier of a custom query .
  /// [data] JSON-serialized answer to the query
  AnswerCustomQuery({this.customQueryId, this.data});

  /// Parse from a json
  AnswerCustomQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_query_id": this.customQueryId,
      "data": this.data,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "answerCustomQuery";

  @override
  String getConstructor() => CONSTRUCTOR;
}
