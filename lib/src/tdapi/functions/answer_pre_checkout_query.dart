part of '../tdapi.dart';

class AnswerPreCheckoutQuery extends TdFunction {
  int preCheckoutQueryId;
  String errorMessage;
  dynamic extra;

  /// Sets the result of a pre-checkout query; for bots only.
  ///[preCheckoutQueryId] Identifier of the pre-checkout query .
  /// [errorMessage] An error message, empty on success
  AnswerPreCheckoutQuery({this.preCheckoutQueryId, this.errorMessage});

  /// Parse from a json
  AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "pre_checkout_query_id": this.preCheckoutQueryId,
      "error_message": this.errorMessage,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "answerPreCheckoutQuery";

  @override
  String getConstructor() => CONSTRUCTOR;
}
