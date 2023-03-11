class PaymentModel {
  int? payment_id;
  String? payment_name;
  String? payment_price;

  PaymentModel({
    this.payment_id,
    this.payment_name,
    this.payment_price,
  });

  PaymentModel copyWith({
    int? payment_id,
    String? payment_name,
    String? payment_price,
  }) {
    return PaymentModel(
      payment_id: payment_id ?? this.payment_id,
      payment_name: payment_name ?? this.payment_name,
      payment_price: payment_price ?? this.payment_price,
    );
  }

  @override
  String toString() => 'PaymentModel(payment_id: $payment_id, payment_name: $payment_name, payment_price: $payment_price)';
}
