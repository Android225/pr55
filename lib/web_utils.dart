import 'package:flutter/material.dart';

// получения пути на веб-платформе
Future<String> getWebFilePath() async {
  return 'Доступ к файловой системе не поддерживается на вебе';
}

// Виджт страницы для веб-платформы
class WebPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: getWebFilePath(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Colors.yellow[100],
          appBar: AppBar(title: Text('Веб')),
          body: Align(
            alignment: Alignment.centerRight,
            child: snapshot.hasData
                ? Text(
              'Веб путь: ${snapshot.data}',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.left,
            )
                : CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
