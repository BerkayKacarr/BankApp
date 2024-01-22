import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/U%C4%B0/navBar.dart';

class accountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cüzdan Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Color.fromARGB(255, 185, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 185, 0, 0),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'İsim'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: surnameController,
              decoration: InputDecoration(labelText: 'Soyisim'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'E-Posta'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: cityController,
              decoration: InputDecoration(labelText: 'Şehir'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Telefon Numarası'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 185, 0, 0)),
              onPressed: () {
                saveProfile();
              },
              child: Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }

  void saveProfile() {
    String name = nameController.text;
    String surname = surnameController.text;
    String email = emailController.text;
    String city = cityController.text;
    String phone = phoneController.text;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Profil bilgileri kaydedildi'),
      ),
    );
  }
}
