import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:expense_tracker_app/widget/expense_list.dart';
import 'package:flutter/material.dart';

class ListBoxExpense extends StatelessWidget {
  const ListBoxExpense({
    required this.expense,
    super.key,
  });

  final List<ExpenseModel> expense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (context, index) {
        return ExpenseList(expense: expense[index]);
      },
    );
  }
}
