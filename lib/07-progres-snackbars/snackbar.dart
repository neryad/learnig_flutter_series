import 'package:flutter/material.dart';

class SnackbarWiget extends StatelessWidget {
  const SnackbarWiget({super.key});

  void showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text(
        'hola soy el snackBard',
      ),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'Deshacer',
        onPressed: () {
          print('Deshacer');
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
            onPressed: () => showSnackbar(context),
            child: Text('Mostrar snack')),
      ),
    );
  }
}
