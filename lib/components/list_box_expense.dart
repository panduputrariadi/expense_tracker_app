import 'package:expense_tracker_app/model/expense_model.dart';
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
        final item = expense[index];
        return ListTile(
          title: Text(item.title),
          subtitle: Text(item.amount.toString()),
          trailing: Text(item.date.toString()),
        );
      },
    );
  }
}
