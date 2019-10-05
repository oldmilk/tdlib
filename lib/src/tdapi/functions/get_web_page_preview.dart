part of '../tdapi.dart';

class GetWebPagePreview extends TdFunction {
  FormattedText text;
  dynamic extra;

  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview.
  ///[text] Message text with formatting
  GetWebPagePreview({this.text});

  /// Parse from a json
  GetWebPagePreview.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }
  
  static const String CONSTRUCTOR = "getWebPagePreview";

  @override
  String getConstructor() => CONSTRUCTOR;
}
