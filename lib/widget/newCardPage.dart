import 'package:flutter/material.dart';

class newCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kart Ekle'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Kart Numarası'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Son Kullanma Tarihi'),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Kart Üzerindeki İsim'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 185, 0, 0)),
              onPressed: () {
                showSuccessDialog(context);
              },
              child: Text('Kartı Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Başarılı!'),
        content: Text('Kredi kartı başarıyla eklendi.'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Tamam'),
          ),
        ],
      );
    },
  );
}
