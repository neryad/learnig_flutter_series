import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/10-InheritedWidget/counter_provider.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    var noStateCounter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('inheritWidget'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Contador con estado: ${provider!.state.counter}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.state.counter++;
              },
              child: const Text('Incrementar'),
            ),
            SizedBox(height: 20),
            Text('Contador sin estado: ${noStateCounter}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                noStateCounter++;
              },
              child: const Text('Incrementar'),
            )
          ],
        ),
      ),
    );
  }
}
