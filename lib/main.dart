import 'package:flutter/material.dart';
import 'platform_utils.dart';
import 'pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Платформозависимое приложение',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Определяем платформу и отображаем
    return Scaffold(
      appBar: AppBar(
        title: Text('Платформенно-зависимое приложение'),
      ),
      body: Center(
        child: buildPlatformDependentPage(),
      ),
    );
  }
}
