// main.dart
import 'package:flutter/material.dart';
import 'about_us.dart'; // Import the AboutUsPage
import 'myhomepage.dart'; // Import the MyHomePage
import 'landing_page.dart'; //import landingpage
import 'login_page.dart'; //Import loginpage
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeHaven',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

