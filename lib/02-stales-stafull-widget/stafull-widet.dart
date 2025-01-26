import 'package:flutter/material.dart';

class IamStafull extends StatefulWidget {
  const IamStafull({super.key});

  @override
  State<IamStafull> createState() => _IamStafullState();
}

class _IamStafullState extends State<IamStafull> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text('Hola soy el StatefulWidget'),
        ),
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
              print(counter);
            });
          },
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}
