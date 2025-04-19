import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paquetes extends StatelessWidget {
  const Paquetes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paquete'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Soy un texto default',
              style: TextStyle(fontSize: 24),
            ),
            Text('Soy un texto con fuentes',
                style: GoogleFonts.roboto(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
