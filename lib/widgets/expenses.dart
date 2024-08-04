import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        amount: 39.99,
        date: DateTime.now(),
        title: 'Flutter Course',
        category: Categories.work),
    Expense(
        amount: 45.99,
        date: DateTime.now(),
        title: 'Cinema',
        category: Categories.leisure),
    Expense(
        amount: 30.99,
        date: DateTime.now(),
        title: 'Food',
        category: Categories.food),
    Expense(
        amount: 99.99,
        date: DateTime.now(),
        title: 'Tour',
        category: Categories.travel)
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expense Tracker',
          style: TextStyle(color: Colors.white),
        ),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay, 
            icon: const Icon(Icons.add)),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Text('The chart'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
        ),
      ),
    );
  }
}
