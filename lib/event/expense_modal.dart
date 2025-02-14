import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseModal extends StatefulWidget {
  const ExpenseModal({super.key});
  @override
  State<ExpenseModal> createState() => _ExpenseModalState();
}

class _ExpenseModalState extends State<ExpenseModal> {
  // var enteredTitle = '';
  // void _saveTitle(String title) {
  //   enteredTitle = title;
  // }
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  final _categoryController = TextEditingController();
  ExpenseCategory _selectedCategory = ExpenseCategory.food;

  void _pickDate() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(0),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      _dateController.text = pickedDate.toString();
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    _dateController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 10,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _amountController,
            decoration: const InputDecoration(
              labelText: 'Amount',
              prefixText: '\$',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: _dateController,
            decoration: const InputDecoration(labelText: 'Date'),
            onTap: _pickDate,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: ExpenseCategory.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Text(category.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _selectedCategory = value;
                  });
                  // _categoryController.text = value.name;
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                  print(_dateController.text);
                  print(_categoryController.text);
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
