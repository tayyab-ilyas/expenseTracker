import 'package:expense_tracker/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'Expense Tracker';
  int totalRow = 0;
  void _addRow() {
    setState(() {
      totalRow += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            for (int i = 0; i < totalRow; ++i)
              CategoryWidget(
                rowNumber: i,
                callback: () {},
              )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addRow,
        label: Text('Add'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
