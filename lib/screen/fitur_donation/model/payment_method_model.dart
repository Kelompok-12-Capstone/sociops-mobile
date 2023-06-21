class PaymentResponse {
  final List<PaymentMethod> data;
  final String message;
  final bool status;

  PaymentResponse({
    required this.data,
    required this.message,
    required this.status,
  });

  factory PaymentResponse.fromJson(Map<String, dynamic> json) {
    return PaymentResponse(
      data: List<PaymentMethod>.from(
          json['data'].map((x) => PaymentMethod.fromJson(x))),
      message: json['message'],
      status: json['status'],
    );
  }
}

class PaymentMethod {
  final int id;
  final String name;
  final String code;
  final String type;
  final String image;

  PaymentMethod({
    required this.id,
    required this.name,
    required this.code,
    required this.type,
    required this.image,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) {
    return PaymentMethod(
      id: json['id'],
      name: json['name'],
      code: json['code'],
      type: json['type'],
      image: json['image'],
    );
  }
}
