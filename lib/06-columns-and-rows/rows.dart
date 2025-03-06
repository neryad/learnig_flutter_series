import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('hola soy un texto'),
          const Icon(Icons.star),
          ElevatedButton(onPressed: () {}, child: Text('Botón')),
        ],
      ),
    );
  }
}
