import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/09-navegacion/second-page.dart';

class ExampleNavigator extends StatelessWidget {
  const ExampleNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    const dataExmple = 'Hola soy un dato';
    // //Basic Example

    // Navigator.push(context,
    //     MaterialPageRoute(builder: (context) => const ExampleClicles()));

    // //POP
    // Navigator.pop(context);\

    // //PushNamed
    //Navigator.pushNamed(context, '/second');

    //pushReplacement
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => const SecondPage()));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacion'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('ir a la segunda pagina'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(
                    data: dataExmple,
                  ),
                ));
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const SecondPage(),
            //     ));

            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ),
    );
  }
}
