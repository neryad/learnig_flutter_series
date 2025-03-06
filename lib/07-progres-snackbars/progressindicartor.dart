import 'dart:async';

import 'package:flutter/material.dart';

class Progressindicartor extends StatefulWidget {
  const Progressindicartor({super.key});

  @override
  State<Progressindicartor> createState() => _ProgressindicartorState();
}

class _ProgressindicartorState extends State<Progressindicartor> {
  double progress = 0.0;
  late Timer timer;

  void showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text(
        'Completado',
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
  void initState() {
    // TODO: implement initState
    super.initState();
    startLoading();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    timer.cancel();
    super.dispose();
  }

  void startLoading() {
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      setState(() {
        progress += 0.1;
        if (progress >= 1) {
          showSnackbar(context);
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey,
            color: Colors.blue,
          ),
          const SizedBox(height: 20),
          const CircularProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.pink,
            color: Colors.green,
            strokeWidth: 2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          LinearProgressIndicator(
            value: progress,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CircularProgressIndicator(
            value: progress,
          ),
        ],
      ),
    );
  }
}
