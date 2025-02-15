enum Category { food, travel, leisure, working }

class Expense {
  final String title;
  final double amount;
  final Category category;
  final DateTime date;

  Expense(
      {required this.title,
      required this.amount,
      required this.category,
      required this.date});
}
