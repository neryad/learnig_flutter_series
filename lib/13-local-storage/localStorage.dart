import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStoragePage extends StatefulWidget {
  const LocalStoragePage({super.key});

  @override
  State<LocalStoragePage> createState() => _LocalStoragePageState();
}

class _LocalStoragePageState extends State<LocalStoragePage> {
  String _savedName = '';

  List<String> _savedNames = [];
  TextEditingController _nameController = TextEditingController();

  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _nameController.text);
    _loadName(); // Recargar nombre guardado
  }

  Future<void> _saveList() async {
    final prefs = await SharedPreferences.getInstance();
    _savedNames = ['Juan', 'Pedro', 'Maria'];
    await prefs.setStringList('listUsername', _savedNames);
    _loadName(); // Recargar nombre guardado
  }

  Future<void> _loadName() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _savedName = prefs.getString('username') ?? 'No hay nombre guardado';
      _savedNames =
          prefs.getStringList('listUsername') ?? ['No hay lista guardada'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _loadName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data local - sharedPreference'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Nombre guardado: $_savedName',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text('Lista guardada: $_savedNames',
                style: const TextStyle(fontSize: 20)),
            TextField(
              controller: _nameController,
            ),
            ElevatedButton(
                onPressed: () {
                  _saveName();
                },
                child: const Text('Guardar nombre')),
            ElevatedButton(
                onPressed: () {
                  _saveList();
                },
                child: const Text('Guardar lista')),
          ],
        ),
      ),
    );
  }
}
