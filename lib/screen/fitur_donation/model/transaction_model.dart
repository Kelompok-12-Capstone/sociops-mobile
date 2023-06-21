class PaymentResponse {
  final PaymentData data;
  final String message;
  final bool status;

  PaymentResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  factory PaymentResponse.fromJson(Map<String, dynamic> json) {
    return PaymentResponse(
      data: PaymentData.fromJson(json['data']),
      message: json['message'],
      status: json['status'],
    );
  }
}

class PaymentData {
  final int amount;
  final int campaignId;
  final String currency;
  final PaymentLogs logs;
  final int paymentId;
  final String referenceId;
  final String status;
  final String userId;

  PaymentData({
    required this.amount,
    required this.campaignId,
    required this.currency,
    required this.logs,
    required this.paymentId,
    required this.referenceId,
    required this.status,
    required this.userId,
  });

  factory PaymentData.fromJson(Map<String, dynamic> json) {
    return PaymentData(
      amount: json['amount'],
      campaignId: json['campaign_id'],
      currency: json['currency'],
      logs: PaymentLogs.fromJson(json['logs']),
      paymentId: json['payment_id'],
      referenceId: json['reference_id'],
      status: json['status'],
      userId: json['user_id'],
    );
  }
}

class PaymentLogs {
  final String id;
  final String businessId;
  final String referenceId;
  final String status;
  final String currency;
  final int chargeAmount;
  final int captureAmount;
  final String checkoutMethod;
  final String channelCode;
  final ChannelProperties channelProperties;
  final Actions actions;
  final bool isRedirectRequired;
  final String callbackUrl;
  final String created;
  final String updated;
  final bool captureNow;
  final Map<String, dynamic> metadata;

  PaymentLogs({
    required this.id,
    required this.businessId,
    required this.referenceId,
    required this.status,
    required this.currency,
    required this.chargeAmount,
    required this.captureAmount,
    required this.checkoutMethod,
    required this.channelCode,
    required this.channelProperties,
    required this.actions,
    required this.isRedirectRequired,
    required this.callbackUrl,
    required this.created,
    required this.updated,
    required this.captureNow,
    required this.metadata,
  });

  factory PaymentLogs.fromJson(Map<String, dynamic> json) {
    return PaymentLogs(
      id: json['id'],
      businessId: json['business_id'],
      referenceId: json['reference_id'],
      status: json['status'],
      currency: json['currency'],
      chargeAmount: json['charge_amount'],
      captureAmount: json['capture_amount'],
      checkoutMethod: json['checkout_method'],
      channelCode: json['channel_code'],
      channelProperties: ChannelProperties.fromJson(json['channel_properties']),
      actions: Actions.fromJson(json['actions']),
      isRedirectRequired: json['is_redirect_required'],
      callbackUrl: json['callback_url'],
      created: json['created'],
      updated: json['updated'],
      captureNow: json['capture_now'],
      metadata: json['metadata'],
    );
  }
}

class ChannelProperties {
  final String successRedirectUrl;

  ChannelProperties({
    required this.successRedirectUrl,
  });

  factory ChannelProperties.fromJson(Map<String, dynamic> json) {
    return ChannelProperties(
      successRedirectUrl: json['success_redirect_url'],
    );
  }
}

class Actions {
  final String? desktopWebCheckoutUrl;
  final String? mobileWebCheckoutUrl;
  final String? mobileDeeplinkCheckoutUrl;
  final String? qrCheckoutString;

  Actions({
    this.desktopWebCheckoutUrl,
    this.mobileWebCheckoutUrl,
    this.mobileDeeplinkCheckoutUrl,
    this.qrCheckoutString,
  });

  factory Actions.fromJson(Map<String, dynamic> json) {
    return Actions(
      desktopWebCheckoutUrl: json['desktop_web_checkout_url'],
      mobileWebCheckoutUrl: json['mobile_web_checkout_url'],
      mobileDeeplinkCheckoutUrl: json['mobile_deeplink_checkout_url'],
      qrCheckoutString: json['qr_checkout_string'],
    );
  }
}
