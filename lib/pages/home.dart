import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomePage',
          style: TextStyle(backgroundColor: Color(0xff4c505b), fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xff4c505b),
      ),
    );
  }
}
