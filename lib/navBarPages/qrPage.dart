import 'package:flutter/material.dart';
import 'package:wallet_app/U%C4%B0/navBar.dart';

class qrPage extends StatelessWidget {
  const qrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('QR Kod'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
    );
  }
}
