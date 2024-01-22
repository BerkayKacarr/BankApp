import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wallet_app/U%C4%B0/navBar.dart';
import 'package:wallet_app/navBarPages/accounts.dart';
import 'package:wallet_app/navBarPages/moneyTransferPage.dart';
import 'package:wallet_app/navBarPages/qrPage.dart';
import 'package:wallet_app/widget/cards.dart';
import 'package:wallet_app/widget/newCardPage.dart';

class BankPage extends StatelessWidget {
  List cardList = [
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
  ];

  int _currentCard = 0;

  final PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    _pageController.dispose();
    dispose();
  }

  _onPageChanged(int index) {
    _currentCard = index;
  }

  BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
        title: Text(
          "BK Bank",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
            icon:
                Icon(Icons.notifications_active_outlined, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kartlarım",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Hepsini Gör",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 246,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemBuilder: ((context, index) => CreditCard()),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => newCard(),
                    ),
                  );
                },
                child: Icon(Icons.add),
                backgroundColor: Color.fromARGB(255, 185, 0, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bildirimler'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Yeni Kampanya'),
            subtitle: Text('Bankamızdan yeni bir kampanya sizleri bekliyor.'),
            leading: Icon(Icons.star),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Yeni Kredi Avantajı'),
            subtitle:
                Text('Başvuru yapacağınız kredilerinizde BK Banka Ayrıcalığı'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Hesap Durumu'),
            subtitle: Text('Hesabınızda güncelleme yapıldı.'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Hesap İşlemler'),
            subtitle: Text(
                'BK Banka, Mobil Uygulama Güncellemesi İle Hesap İşlemlerini Kolaylaştırdı'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('EFT de güncelleme !'),
            subtitle: Text(
                'Para Transferlerinde Yeni Dönem: BK Banka, Anında EFT Hizmeti Başlattı'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Faiz Oranları Güncellemesi'),
            subtitle: Text(
                'BK Banka, Yüksek Faizli Tasarruf Hesabı Kampanyası İlan Etti'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Kripto Para BK Bankada'),
            subtitle: Text(
                'Kripto Paralarla Tanışın: BK Banka, Dijital Varlık Hesaplarını Sunuyor'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Kredi Kartı Kullananlara Özel !'),
            subtitle: Text(
                'BK Banka, Kredi Kartı Kullanıcılarına Özel İndirimler Sunuyor'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Yatırım BK Bankada Yapılır'),
            subtitle: Text(
                'Yatırımcılara Müjde: BK Banka, Yatırım Fonlarına Yeni Seçenekler Ekledi'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Yeni Kampanya'),
            subtitle: Text('Bankamızdan yeni bir kampanya sizleri bekliyor.'),
            leading: Icon(Icons.star),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Yeni Kredi Avantajı'),
            subtitle:
                Text('Başvuru yapacağınız kredilerinizde BK Banka Ayrıcalığı'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Hesap Durumu'),
            subtitle: Text('Hesabınızda güncelleme yapıldı.'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Hesap İşlemler'),
            subtitle: Text(
                'BK Banka, Mobil Uygulama Güncellemesi İle Hesap İşlemlerini Kolaylaştırdı'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('EFT de güncelleme !'),
            subtitle: Text(
                'Para Transferlerinde Yeni Dönem: BK Banka, Anında EFT Hizmeti Başlattı'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Faiz Oranları Güncellemesi'),
            subtitle: Text(
                'BK Banka, Yüksek Faizli Tasarruf Hesabı Kampanyası İlan Etti'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Kripto Para BK Bankada'),
            subtitle: Text(
                'Kripto Paralarla Tanışın: BK Banka, Dijital Varlık Hesaplarını Sunuyor'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Kredi Kartı Kullananlara Özel !'),
            subtitle: Text(
                'BK Banka, Kredi Kartı Kullanıcılarına Özel İndirimler Sunuyor'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Yatırım BK Bankada Yapılır'),
            subtitle: Text(
                'Yatırımcılara Müjde: BK Banka, Yatırım Fonlarına Yeni Seçenekler Ekledi'),
            leading: Icon(Icons.account_balance),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
