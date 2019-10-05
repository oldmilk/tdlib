part of '../tdapi.dart';

class AnswerCallbackQuery extends TdFunction {
  int callbackQueryId;
  String text;
  bool showAlert;
  String url;
  int cacheTime;
  dynamic extra;

  /// Sets the result of a callback query; for bots only.
  ///[callbackQueryId] Identifier of the callback query .
  /// [text] Text of the answer .
  /// [showAlert] If true, an alert should be shown to the user instead of a toast notification .
  /// [url] URL to be opened .
  /// [cacheTime] Time during which the result of the query can be cached, in seconds
  AnswerCallbackQuery(
      {this.callbackQueryId,
      this.text,
      this.showAlert,
      this.url,
      this.cacheTime});

  /// Parse from a json
  AnswerCallbackQuery.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "callback_query_id": this.callbackQueryId,
      "text": this.text,
      "show_alert": this.showAlert,
      "url": this.url,
      "cache_time": this.cacheTime,
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "answerCallbackQuery";

  @override
  String getConstructor() => CONSTRUCTOR;
}
