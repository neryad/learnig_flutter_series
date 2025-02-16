import 'package:flutter/material.dart';

class IamStales extends StatelessWidget {
  const IamStales({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Column(
      children: [
        const Center(
          child: Text('Hola soy el StatelessWidget'),
        ),
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: () {
            counter++;
            print(counter);
          },
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}
