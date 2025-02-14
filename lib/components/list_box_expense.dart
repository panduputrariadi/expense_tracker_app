import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:expense_tracker_app/widget/expense_list.dart';
import 'package:flutter/material.dart';

class ListBoxExpense extends StatelessWidget {
  const ListBoxExpense({
    required this.expense,
    super.key,
    required this.onDelete,
  });

  final List<ExpenseModel> expense;
  final void Function(String) onDelete;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (context, index) {
        // return ExpenseList(expense: expense[index]);
        return Dismissible(
            key: ValueKey(expense[index].id),
            onDismissed: (direction) => onDelete(expense[index].id),
            child: ExpenseList(
              expense: expense[index],
              onDelete: onDelete,
            ));
      },
    );
  }
}
