import 'package:flutter/material.dart';
import 'package:wallet_app/U%C4%B0/navBar.dart';

class Transaction {
  final String type;
  final String description;
  final String date;
  final double amount;

  Transaction(
      {required this.type,
      required this.description,
      required this.date,
      required this.amount});
}

class hesapHareketleri extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        type: 'Gelir',
        description: 'Maaş',
        date: '1 Şubat 2022',
        amount: 5000.00),
    Transaction(
        type: 'Alışveriş',
        description: 'Market',
        date: '5 Şubat 2022',
        amount: -200.00),
    Transaction(
        type: 'Transfer',
        description: 'Arkadaş',
        date: '10 Şubat 2022',
        amount: -50.00),
    Transaction(
        type: 'Gelir',
        description: 'İkinci İş',
        date: '15 Şubat 2022',
        amount: 1000.00),
    Transaction(
        type: 'Fatura',
        description: 'Elektrik',
        date: '20 Şubat 2022',
        amount: -150.00),
    Transaction(
        type: 'Transfer',
        description: 'Aile',
        date: '25 Şubat 2022',
        amount: -30.00),
    Transaction(
        type: 'Gelir',
        description: 'Maaş',
        date: '1 Şubat 2022',
        amount: 5000.00),
    Transaction(
        type: 'Alışveriş',
        description: 'Market',
        date: '5 Şubat 2022',
        amount: -200.00),
    Transaction(
        type: 'Transfer',
        description: 'Arkadaş',
        date: '10 Şubat 2022',
        amount: -50.00),
    Transaction(
        type: 'Gelir',
        description: 'İkinci İş',
        date: '15 Şubat 2022',
        amount: 1000.00),
    Transaction(
        type: 'Fatura',
        description: 'Elektrik',
        date: '20 Şubat 2022',
        amount: -150.00),
    Transaction(
        type: 'Transfer',
        description: 'Aile',
        date: '25 Şubat 2022',
        amount: -30.00),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Hesap Hareketleri'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          Transaction transaction = transactions[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              child: ListTile(
                leading: Icon(getTransactionIcon(transaction.type)),
                title: Text(transaction.description),
                subtitle: Text(transaction.date),
                trailing: Text(
                    '${transaction.amount >= 0 ? '+' : ''}\$${transaction.amount.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: transaction.amount >= 0
                            ? Colors.green
                            : Colors.red)),
              ),
            ),
          );
        },
      ),
    );
  }

  IconData getTransactionIcon(String type) {
    switch (type) {
      case 'Gelir':
        return Icons.arrow_upward;
      case 'Alışveriş':
        return Icons.shopping_cart;
      case 'Transfer':
        return Icons.compare_arrows;
      case 'Fatura':
        return Icons.receipt;
      default:
        return Icons.money;
    }
  }
}
