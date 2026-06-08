class TransactionModel {
  final String id;
  final String name;
  final double amount;
  final String date;
  final String status; // 'completed', 'pending', 'failed'

  TransactionModel({
    required this.id,
    required this.name,
    required this.amount,
    required this.date,
    required this.status,
  });
}
