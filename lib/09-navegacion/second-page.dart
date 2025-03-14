import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pagina'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(data),
          ),
          Center(
              child: ElevatedButton(
            child: const Text('Regresar'),
            onPressed: () => Navigator.pop(context),
          )),
        ],
      ),
    );
  }
}
