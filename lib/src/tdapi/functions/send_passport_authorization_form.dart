part of '../tdapi.dart';

class SendPassportAuthorizationForm extends TdFunction {
  int autorizationFormId;
  List types;
  dynamic extra;

  /// Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements need to be used.
  ///[autorizationFormId] Authorization form identifier .
  /// [types] Types of Telegram Passport elements chosen by user to complete the authorization form
  SendPassportAuthorizationForm({this.autorizationFormId, this.types});

  /// Parse from a json
  SendPassportAuthorizationForm.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "autorization_form_id": this.autorizationFormId,
      "types": this.types.map((listItem) => listItem.toJson()).toList(),
      "@extra": this.extra
    };
  }

  @override
  void setExtra(dynamic value) {
    this.extra = value;
  }

  static const String CONSTRUCTOR = "sendPassportAuthorizationForm";

  @override
  String getConstructor() => CONSTRUCTOR;
}
