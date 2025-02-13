import 'package:flutter/material.dart';

class ExpenseModal extends StatefulWidget {
  const ExpenseModal({super.key});
  @override
  State<ExpenseModal> createState() => _ExpenseModalState();
}

class _ExpenseModalState extends State<ExpenseModal> {
  var enteredTitle = '';
  var enteredAmount = '';
  void _saveTitle(String title) {
    enteredTitle = title;
  }

  // void _saveAmount(String amount) {
  //   enteredAmount = amount;
  // }

  // void _saveDate(String date) {
  //   print(date);
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitle,
            maxLength: 10,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          // TextField(
          //   decoration: InputDecoration(labelText: 'Amount'),
          //   keyboardType: TextInputType.number,
          // ),
          // TextField(
          //   decoration: InputDecoration(labelText: 'Date'),
          //   keyboardType: TextInputType.datetime,
          // ),
          // TextField(
          //   decoration: InputDecoration(labelText: 'Category'),
          // )
          // ElevatedButton(
          //   // onPressed: () {},
          //   child: Text('Add Expense'),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(enteredTitle);
                  Navigator.of(context).pop();
                },
                child: const Text('Add Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
