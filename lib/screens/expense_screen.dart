import 'package:expense_tracker/sheets/new_expense_sheet.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Expense Tracker"), actions: [
          IconButton(
              onPressed: () {
                // open the model bottom sheet
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (ctx) => AddNewExpense());
              },
              icon: const Icon(Icons.add))
        ]),
        body: Column(
          children: [
            Card(
              child: Column(
                children: [
                  const Text("This is a card\nThis is a card"),
                  ElevatedButton(onPressed: () {}, child: const Text("button")),
                ],
              ),
            ),
          ],
        ));
  }
}
