import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;
  final int resultado;

  SecondScreen({required this.data, required this.resultado});

  @override
  Widget build(BuildContext context) {
    String result = resultado.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data),
            Text(result),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Volver a la Primera Pantalla'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}