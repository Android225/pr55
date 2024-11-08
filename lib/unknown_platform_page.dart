import 'package:flutter/material.dart';

class UnknownPlatformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Неизвестная платформа'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Платформа не поддерживается.',
          style: TextStyle(fontSize: 24, color: Colors.red[800]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
