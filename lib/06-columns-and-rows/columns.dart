import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/05-btn-cards/btn_cards.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Botón'),
        ),
        BtnCards(),
      ],
    );
  }
}
