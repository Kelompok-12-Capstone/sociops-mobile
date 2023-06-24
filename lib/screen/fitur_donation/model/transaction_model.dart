import 'dart:convert';

TransactionResponse transactionFromJson(String str) =>
    TransactionResponse.fromJson(json.decode(str));

class TransactionResponse {
  Data? data;
  String? message;
  bool? status;

  TransactionResponse({
    this.data,
    this.message,
    this.status,
  });

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      TransactionResponse(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        status: json["status"],
      );
}

class Data {
  int? id;
  int? amount;
  String? currency;
  String? status;
  int? paymentId;
  int? campaignId;
  int? userId;
  Logs? logs;
  String? referenceId;
  DateTime? createdAt;
  DateTime? updatedAt;

  Data({
    this.id,
    this.amount,
    this.currency,
    this.status,
    this.paymentId,
    this.campaignId,
    this.userId,
    this.logs,
    this.referenceId,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        amount: json["amount"],
        currency: json["currency"],
        status: json["status"],
        paymentId: json["payment_id"],
        campaignId: json["campaign_id"],
        userId: json["user_id"],
        logs: Logs.fromJson(json["logs"]),
        referenceId: json["reference_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Logs {
  String? id;
  String? businessId;
  String? referenceId;
  String? status;
  String? currency;
  int? chargeAmount;
  int? captureAmount;
  String? checkoutMethod;
  String? channelCode;
  ChannelProperties? channelProperties;
  ActionsResponse? actions;
  bool? isRedirectRequired;
  String? callbackUrl;
  DateTime? created;
  DateTime? updated;
  bool? captureNow;
  Metadata? metadata;

  Logs({
    this.id,
    this.businessId,
    this.referenceId,
    this.status,
    this.currency,
    this.chargeAmount,
    this.captureAmount,
    this.checkoutMethod,
    this.channelCode,
    this.channelProperties,
    this.actions,
    this.isRedirectRequired,
    this.callbackUrl,
    this.created,
    this.updated,
    this.captureNow,
    this.metadata,
  });

  factory Logs.fromJson(Map<String, dynamic> json) => Logs(
        id: json["id"],
        businessId: json["business_id"],
        referenceId: json["reference_id"],
        status: json["status"],
        currency: json["currency"],
        chargeAmount: json["charge_amount"],
        captureAmount: json["capture_amount"],
        checkoutMethod: json["checkout_method"],
        channelCode: json["channel_code"],
        channelProperties:
            ChannelProperties.fromJson(json["channel_properties"]),
        actions: ActionsResponse.fromJson(json["actions"]),
        isRedirectRequired: json["is_redirect_required"],
        callbackUrl: json["callback_url"],
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
        captureNow: json["capture_now"],
        metadata: Metadata.fromJson(json["metadata"]),
      );
}

class ActionsResponse {
  String? desktopWebCheckoutUrl;
  String? mobileWebCheckoutUrl;
  String? mobileDeeplinkCheckoutUrl;
  String? qrCheckoutString;

  ActionsResponse({
    this.desktopWebCheckoutUrl,
    this.mobileWebCheckoutUrl,
    this.mobileDeeplinkCheckoutUrl,
    this.qrCheckoutString,
  });

  factory ActionsResponse.fromJson(Map<String, dynamic> json) =>
      ActionsResponse(
        desktopWebCheckoutUrl: json["desktop_web_checkout_url"],
        mobileWebCheckoutUrl: json["mobile_web_checkout_url"],
        mobileDeeplinkCheckoutUrl: json["mobile_deeplink_checkout_url"],
        qrCheckoutString: json["qr_checkout_string"],
      );
}

class ChannelProperties {
  String? successRedirectUrl;

  ChannelProperties({
    this.successRedirectUrl,
  });

  factory ChannelProperties.fromJson(Map<String, dynamic> json) =>
      ChannelProperties(
        successRedirectUrl: json["success_redirect_url"],
      );
}

class Metadata {
  String? branchCode;

  Metadata({
    this.branchCode,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        branchCode: json["branch_code"],
      );
}
