import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/05-btn-cards/btn_cards.dart';
import 'package:learnig_flutter_series/05-btn-cards/buttons.dart';
import 'package:learnig_flutter_series/04-stales-stafull-widget/stafull-widet.dart';
import 'package:learnig_flutter_series/04-stales-stafull-widget/stales.dart';
import 'package:learnig_flutter_series/05-btn-cards/cards.dart';
import 'package:learnig_flutter_series/06-columns-and-rows/column_rows.dart';
import 'package:learnig_flutter_series/06-columns-and-rows/columns.dart';
import 'package:learnig_flutter_series/06-columns-and-rows/rows.dart';
import 'package:learnig_flutter_series/08-cliclos/exmplet-clicos.dart';
import 'package:learnig_flutter_series/07-progres-snackbars/progressindicartor.dart';
import 'package:learnig_flutter_series/07-progres-snackbars/snackbar.dart';
import 'package:learnig_flutter_series/09-navegacion/explame-navigator.dart';
import 'package:learnig_flutter_series/10-InheritedWidget/counter_provider.dart';
import 'package:learnig_flutter_series/10-InheritedWidget/counter_state.dart';
import 'package:learnig_flutter_series/10-InheritedWidget/inhereta-page.dart';
import 'package:learnig_flutter_series/11-paquetes/paquetes.dart';
import 'package:learnig_flutter_series/12-http/http_peticiones.dart';
import 'package:learnig_flutter_series/13-local-storage/localStorage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  CounterState state = CounterState(0);
  Widget _selectedWidget = const Center(child: Text('Selecciona un widget'));

  void _updateWidget(Widget widget) {
    setState(() {
      _selectedWidget = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
        state: state,
        child: MaterialApp(
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
                  ListTile(
                    title: const Text('Botones'),
                    subtitle: const Text('Ejemplo de los botones'),
                    leading: const Icon(Icons.smart_button),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const Buttons());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Cards'),
                    subtitle: const Text('Ejemplo de los cards'),
                    leading: const Icon(Icons.card_giftcard),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const Cards());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Cards + Botones'),
                    subtitle:
                        const Text('Ejemplo de los cards junto a los botones'),
                    leading: const Icon(Icons.card_giftcard),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const BtnCards());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Rows'),
                    subtitle: const Text('Ejemplo del Rows'),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const Rows());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Columns'),
                    subtitle: const Text('Ejemplo del Columns'),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const Columns());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Columns and rowes'),
                    subtitle: const Text('Ejemplo de Columns and rowes'),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const RowsAndColumns());
                      //Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    title: const Text('Snackbar'),
                    subtitle: const Text('Ejemplo de Snackbar'),
                    leading: const Icon(Icons.message_sharp),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const SnackbarWiget());

                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('ProgressIndicator'),
                    subtitle: const Text('Ejemplo de ProgressIndicator'),
                    leading: const Icon(Icons.circle),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      _updateWidget(const Progressindicartor());
                      //Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    title: const Text('Ciclos de vida'),
                    subtitle: const Text('Ejemplo de los ciclos de vida'),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.refresh),
                    onTap: () {
                      _updateWidget(const ExampleClicles());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Navegacion'),
                    subtitle: const Text('Ejemplo de la navegacion'),
                    leading: const Icon(Icons.list),
                    trailing: const Icon(Icons.route),
                    onTap: () {
                      _updateWidget(const ExampleNavigator());
                      //Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    title: const Text('InheritedWidget'),
                    subtitle: const Text('Ejemplo de InheritedWidget'),
                    leading: const Icon(Icons.analytics),
                    trailing: const Icon(Icons.route),
                    onTap: () {
                      _updateWidget(const StatePage());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Paquetes'),
                    subtitle: const Text('Ejemplo de paquetes'),
                    leading: const Icon(Icons.add_box),
                    trailing: const Icon(Icons.route),
                    onTap: () {
                      _updateWidget(const Paquetes());
                      //Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    title: const Text('Peticion HTTP'),
                    subtitle: const Text('Ejemplo de peticion HTTP'),
                    leading: const Icon(Icons.web),
                    trailing: const Icon(Icons.route),
                    onTap: () {
                      _updateWidget(const PeticionesHttp());
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('local Storage'),
                    subtitle: const Text('Ejemplo de local Storage'),
                    leading: const Icon(Icons.storage),
                    trailing: const Icon(Icons.route),
                    onTap: () {
                      _updateWidget(const LocalStoragePage());
                      //Navigator.pop(context);
                    },
                  ),
                  //Navigator.pop(context);
                ],
              ),
            ),
          ),
        ));
  }
}
