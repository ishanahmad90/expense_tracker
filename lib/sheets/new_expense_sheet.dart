import 'package:expense_tracker/models/expense_models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewExpense extends StatefulWidget {
  const AddNewExpense({super.key});

  @override
  State<AddNewExpense> createState() => _AddNewExpense();
}

class _AddNewExpense extends State<AddNewExpense> {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _amountEditingController =
      TextEditingController();
  DateTime? _pickedDate;

  Category _selectedCat = Category.food;

  void _datePicker() async {
    final now = DateTime.now();
    final DateTime firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
        context: context, firstDate: firstDate, lastDate: now);
    setState(() {
      _pickedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          TextField(
            controller: _titleEditingController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text("Title"),
              hintText: "Enter The Ttile of the Expense",
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountEditingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixText: "\$",
                    hintText: "0.0",
                    label: Text("Amount"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _pickedDate == null
                        ? "No Date selected"
                        : DateFormat.yMd().format(_pickedDate!),
                  ),
                  IconButton(
                    onPressed: _datePicker,
                    icon: const Icon(Icons.calendar_month),
                  ),
                ],
              ),
            ],
          ),
          DropdownButton(
              value: _selectedCat,
              items: Category.values
                  .map(
                    (category) => DropdownMenuItem(
                      value: category,
                      child: Text(
                        category.name.toUpperCase(),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                setState(() {
                  _selectedCat = value;
                });
              }),
          Text(_titleEditingController.text),
        ],
      ),
    );
  }
}
