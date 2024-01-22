import 'package:flutter/material.dart';
import 'package:wallet_app/U%C4%B0/navBar.dart';

class moneyTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Para Transferi'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 185, 0, 0)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TransferPage(),
              ),
            );
          },
          child: Text(
            'Para Transferi',
          ),
        ),
      ),
    );
  }
}

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController recipientController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Para Transferi'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: recipientController,
              decoration: InputDecoration(labelText: 'Alıcı Hesap Numarası'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Transfer Miktarı'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 185, 0, 0)),
              onPressed: () {
                String recipient = recipientController.text;
                double amount = double.tryParse(amountController.text) ?? 0.0;

                if (recipient.isNotEmpty && amount > 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$amount TL transfer edildi'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Lütfen geçerli bir alıcı ve miktar girin'),
                      backgroundColor: Color.fromARGB(255, 185, 0, 0),
                    ),
                  );
                }
              },
              child: Text('Transfer Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
