import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/10-InheritedWidget/counter_state.dart';

class CounterProvider extends InheritedWidget {
  final CounterState state;

  CounterProvider({required this.state, required Widget child})
      : super(child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.state.counter != state.counter;
  }
}
