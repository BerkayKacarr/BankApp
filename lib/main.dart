import 'package:flutter/material.dart';
import 'package:wallet_app/LoginScreens/loginPage.dart';
import 'package:wallet_app/U%C4%B0/homePage.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
