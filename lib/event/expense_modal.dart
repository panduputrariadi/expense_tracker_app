import 'package:flutter/material.dart';

class ExpenseModal extends StatefulWidget {
  const ExpenseModal({super.key});
  @override
  State<ExpenseModal> createState() => _ExpenseModalState();
}

class _ExpenseModalState extends State<ExpenseModal> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            maxLength: 10,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Date'),
            keyboardType: TextInputType.datetime,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Category'),
          )
          // ElevatedButton(
          //   // onPressed: () {},
          //   child: Text('Add Expense'),
          // ),
        ],
      ),
    );
  }
}
