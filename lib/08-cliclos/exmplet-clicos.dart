import 'package:flutter/material.dart';

class ExampleClicles extends StatefulWidget {
  const ExampleClicles({super.key});

  @override
  State<ExampleClicles> createState() => _ExampleCliclesState();
}

class _ExampleCliclesState extends State<ExampleClicles> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState inicia el ciclo de vida del widget');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Contador: $counter"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Text('Incrementar'))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose finaliza el ciclo de vida del widget');
  }
}
