import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatSimpleDate = formatDate(DateTime.now(), [dd, '/', mm, '/', yyyy]);

enum ExpenseCategory { food, transport, shopping, others }

const expenseCategoryIcons = {
  ExpenseCategory.food: Icons.fastfood,
  ExpenseCategory.transport: Icons.directions_car,
  ExpenseCategory.shopping: Icons.shopping_cart,
  ExpenseCategory.others: Icons.attach_money,
};

class ExpenseModel {
  ExpenseModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseCategory category;

  String get formattedDate => formatSimpleDate;
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });
  final ExpenseCategory category;
  final List<ExpenseModel> expenses;

  double get totalAmount {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
