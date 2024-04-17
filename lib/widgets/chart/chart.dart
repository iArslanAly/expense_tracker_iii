import 'package:expense_tracker_iii/widgets/chart/chart_bar.dart';
import 'package:expense_tracker_iii/models/expense.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, required this.expense});
  final List<Expense> expense;
  List<ExpenseBucket> get buckets {
    return [
      ExpenseBucket.forCategory(expense, Category.food),
      ExpenseBucket.forCategory(expense, Category.travel),
      ExpenseBucket.forCategory(expense, Category.leisure),
      ExpenseBucket.forCategory(expense, Category.work)
    ];
  }

  double get maxTotalExpense {
    double maxTotalExpense = 0;
    for (var bucket in buckets) {
      if (bucket.totalExpenses > maxTotalExpense) {
        maxTotalExpense = bucket.totalExpenses;
      }
    }
    return maxTotalExpense;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: buckets.map((bucket) {
            return ChartBar(
              bucket.category,
              bucket.totalExpenses,
              maxTotalExpense == 0 ? 0 : bucket.totalExpenses / maxTotalExpense,
            );
          }).toList(),
        ),
      ),
    );
  }
}
