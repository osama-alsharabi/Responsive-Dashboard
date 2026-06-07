class TransactionModel {
  final String title, data;
  final double amount;
  final bool isWithDrawal;

  TransactionModel({
    required this.title,
    required this.data,
    required this.amount,
    required this.isWithDrawal,
  });
}
