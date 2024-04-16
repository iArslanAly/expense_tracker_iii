import 'package:expense_tracker_iii/widgets/expenses.dart';
import 'package:expense_tracker_iii/widgets/expenses_list/expense_items.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_iii/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onDeleteExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          onDeleteExpense(expenses[index]);
        },
        child: ExpenseItem(
          //Text(expenses[index].title),
          expenses[index],
        ),
      ),
    );
  }
}
