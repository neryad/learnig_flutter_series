import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),

        //TextButton(onPressed: () {}, child: Text('Soy un TextButton'), style: ButtonStyle() ,),

        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Colors.red,
        //     ),
        //     onPressed: () {
        //       print('Hola desde el ElevatedButton');
        //     },
        //     child: Text('Soy un elevetad button')),
      ),
    );
  }
}
