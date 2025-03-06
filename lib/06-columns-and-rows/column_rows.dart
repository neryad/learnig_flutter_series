import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('hola soy un texto'),
            const Icon(Icons.star),
            ElevatedButton(onPressed: () {}, child: Text('Botón')),
          ],
        ),
        Row(
          children: [
            const Text('segundo texto'),
            const Icon(Icons.star),
            ElevatedButton(onPressed: () {}, child: Text('segundo Botón')),
          ],
        ),
        Column(
          children: [
            const Text('columna'),
            const Icon(Icons.star),
            ElevatedButton(onPressed: () {}, child: Text('Botón')),
          ],
        )
      ],
    );
  }
}
