import 'package:flutter/material.dart';
import 'package:wallet_app/U%C4%B0/bankPage.dart';
import 'package:wallet_app/navBarPages/accounts.dart';
import 'package:wallet_app/navBarPages/hesapHareketleri.dart';
import 'package:wallet_app/navBarPages/moneyTransferPage.dart';
import 'package:wallet_app/navBarPages/qrPage.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Color.fromARGB(255, 185, 0, 0),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              radius: 52,
            ),
            SizedBox(height: 12),
            Text(
              'Berkay KAÇAR',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.only(top: 25, left: 15),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: Icon(Icons.home_max_outlined),
              title: Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BankPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profilim'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => accountsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.qr_code),
              title: Text('QR'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => qrPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Transfer'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => moneyTransfer()));
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Hesap Hareketleri'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => hesapHareketleri()));
              },
            ),
          ],
        ),
      );
}
