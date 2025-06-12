import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_expenses/components/transaction_form.dart';
import 'package:flutter_expenses/components/transaction_list.dart';
import 'package:flutter_expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
