import '../model/payment_model.dart';

class PaymentData {
  static List<PaymentModel> paymentModel = [
    PaymentModel(
        payment_id: 1,
        payment_name: "Movies & \nSeries",
        payment_price: "20 USD"),
    PaymentModel(
        payment_id: 2, payment_name: "Movies ", payment_price: "15 USD"),
    PaymentModel(
        payment_id: 3, payment_name: "Series", payment_price: "15 USD"),
    PaymentModel(payment_id: 4, payment_name: "Credit / Debit Card"),
    PaymentModel(payment_id: 5, payment_name: "Netbanking")
  ];
}
