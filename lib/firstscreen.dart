import 'package:flutter/material.dart';
import 'secondscreen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // Controllers for text fields
  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    aController.dispose();
    bController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text input fields for a and b
            TextField(
              controller: aController,
              decoration: InputDecoration(labelText: 'Ingrese a'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: bController,
              decoration: InputDecoration(labelText: 'Ingrese b'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Ir a la Segunda Pantalla'),
              onPressed: () {
                // Calculate resultado based on user input
                int a = int.tryParse(aController.text) ?? 0;
                int b = int.tryParse(bController.text) ?? 0;
                int resultado = a + b; // Example calculation, you can change this as needed

                // Navigate to SecondScreen and pass data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      data: 'Hola desde la Primera Pantalla',
                      resultado: resultado,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
