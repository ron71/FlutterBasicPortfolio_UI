import 'package:flutter/material.dart';
import 'package:portfolio/LoginScreen.dart';
import 'package:portfolio/PortFolioScreen.dart';

void main(){

  runApp(new PortfolioApp());
}


class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      theme: new ThemeData(
        primaryColor: const Color(0xFFF57C00),

      ),
      home: LoginScreen(),
    );
  }
}
