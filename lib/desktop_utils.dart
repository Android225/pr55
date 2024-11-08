import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// получение пути на десктопе
Future<String> getDesktopFilePath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

// Виджет страницы десктопной платформы
class DesktopPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getDesktopFilePath(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(title: Text('Десктоп')),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: snapshot.hasData
                ? Text(
              'Десктоп путь: ${snapshot.data}',
              style: TextStyle(fontSize: 24),
            )
                : CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
