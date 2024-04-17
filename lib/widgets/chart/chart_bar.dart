import 'package:flutter/material.dart';
import 'package:expense_tracker_iii/models/expense.dart';

class ChartBar extends StatelessWidget {
  final Category category;
  final double amount;
  final double spendingPctOfTotal;
  const ChartBar(this.category, this.amount, this.spendingPctOfTotal,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text('\$${amount.toStringAsFixed(0)}'),
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        FittedBox(
          child: Icon(categoryIcons[category]),
        ),
      ],
    );
  }
}
