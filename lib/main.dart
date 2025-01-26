import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/02-stales-stafull-widget/stafull-widet.dart';
import 'package:learnig_flutter_series/02-stales-stafull-widget/stales.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget _selectedWidget = const Center(child: Text('Selecciona un widget'));

  void _updateWidget(Widget widget) {
    setState(() {
      _selectedWidget = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Básicos en Flutter'),
          actions: [
            IconButton(
                onPressed: () {
                  print('hola desde el appbar');
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        body: _selectedWidget,
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(child: Text('Drawer Header')),
              ListTile(
                title: const Text('Texto'),
                subtitle: const Text('Ejemplo del texto'),
                leading: const Icon(Icons.text_fields),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _updateWidget(const Text(
                    'Hola soy el texto',
                    style: TextStyle(fontSize: 24, color: Colors.blue),
                  ));
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('StatelessWidget'),
                subtitle: const Text('StatelessWidget'),
                leading: const Icon(Icons.text_fields),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _updateWidget(const IamStales());
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('StatefulWidget'),
                subtitle: const Text('Ejemplo del StatefulWidget'),
                leading: const Icon(Icons.text_fields),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _updateWidget(const IamStafull());
                  //Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
