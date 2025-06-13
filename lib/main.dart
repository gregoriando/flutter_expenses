import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_expenses/components/transaction_form.dart';
import 'package:flutter_expenses/components/transaction_list.dart';
import 'package:flutter_expenses/models/transaction.dart';

void main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de água',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de internet',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta de cartão de crédito',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't6', title: 'Marisa', value: 211.30, date: DateTime.now()),
    Transaction(
      id: 't7',
      title: 'Riachuelo',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't8', title: 'Renner', value: 211.30, date: DateTime.now()),
    Transaction(id: 't9', title: 'Iptu', value: 211.30, date: DateTime.now()),
    Transaction(
      id: 't10',
      title: 'Conta de gas',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't11',
      title: 'Prestação do Carro',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't12',
      title: 'Prestação da moto',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't13',
      title: ' Magic',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't14',
      title: 'Conta de Bonecos',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't15',
      title: 'Alimentação',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
    Navigator.of(context).pop();
  }

  void _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 142, 200, 133),
        actions: [
          IconButton(
            onPressed: () {
              _openTransactionFormModal(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
        title: Text('Despesas Pessoais'),
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Card(elevation: 5, child: Text('Gráfico')),
            ),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _openTransactionFormModal(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
