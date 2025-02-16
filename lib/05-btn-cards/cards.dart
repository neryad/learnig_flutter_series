import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      color: Colors.black,
      child: Image.network(
        'https://picsum.photos/250?image=9',
        fit: BoxFit.cover,
      ),
    );
  }
}
