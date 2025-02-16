import 'package:flutter/material.dart';

class BtnCards extends StatelessWidget {
  const BtnCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            'https://picsum.photos/250?image=9',
            fit: BoxFit.cover,
          ),
          ElevatedButton(
              onPressed: () {
                print('Hola desde el elevated button');
              },
              child: const Text('eleveated button')),
          TextButton(
            onPressed: () => print('Hola desde el text button'),
            child: const Text('text button'),
          ),
          const Icon(
            Icons.settings,
            color: Colors.red,
            size: 50,
          ),
        ],
      ),
    );
  }
}
