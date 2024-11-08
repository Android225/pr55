import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// Функция для получения пути на Android
Future<String> getAndroidFilePath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

// Виджет страницы Android
class AndroidPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getAndroidFilePath(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.green[100],
          appBar: AppBar(title: Text('Android')),
          body: Center(
            child: snapshot.hasData
                ? Text(
              'Android путь: ${snapshot.data}',
              style: TextStyle(fontSize: 24),
            )
                : CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
