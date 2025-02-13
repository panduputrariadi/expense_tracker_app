import 'package:expense_tracker_app/components/list_box_expense.dart';
import 'package:expense_tracker_app/event/expense_modal.dart';
import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});
  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<ExpenseModel> _expenses = [
    ExpenseModel(
      title: 'Groceries',
      amount: 100.0,
      date: DateTime.now(),
      category: ExpenseCategory.food,
    ),
    ExpenseModel(
      title: 'Fuel',
      amount: 50.0,
      date: DateTime.now(),
      category: ExpenseCategory.transport,
    ),
    ExpenseModel(
      title: 'Shoes',
      amount: 200.0,
      date: DateTime.now(),
      category: ExpenseCategory.shopping,
    ),
    ExpenseModel(
      title: 'Lunch',
      amount: 20.0,
      date: DateTime.now(),
      category: ExpenseCategory.food,
    ),
  ];
  void _openModal() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return const ExpenseModal();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _openModal,
            icon: const Icon(Icons.add),
          ),
        ],
        title: const Text('Expense Tracker'),
      ),
      body: Column(
        children: [
          // const Text('Expense Tracker'),
          // Text('Expense Tracker uhuy'),
          Expanded(
            child: ListBoxExpense(expense: _expenses),
          ),
        ],
      ),
    );
  }
}
