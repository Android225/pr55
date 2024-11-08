import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

// получения пути на iOS
Future<String> getIOSFilePath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

// Виджет страницы iOS
class IOSPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getIOSFilePath(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(title: Text('iOS')),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: snapshot.hasData
                ? Text(
              'iOS путь: ${snapshot.data}',
              style: TextStyle(fontSize: 24),
            )
                : CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
