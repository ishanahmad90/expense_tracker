import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense Tracker"),
        ),
        body: const Column(
          children: [
            Card(
              child: const Text("This is a card"),
            ),
          ],
        ));
  }
}
