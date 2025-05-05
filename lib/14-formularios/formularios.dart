import 'package:flutter/material.dart';

class FormulariosPage extends StatelessWidget {
  const FormulariosPage({super.key});

  @override
  Widget build(BuildContext context) {
    String nombre = "";
    final _formkey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    void _submit() {
      if (_formkey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Procesando datos')),
        );
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Formularios'),
        ),
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "nombre",
                  hintText: "ingrese su nombre",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                onChanged: (value) {
                  nombre = value;
                  print(nombre);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: "Nombre",
                        hintText: "ingrese su nombre",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su nombre';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        hintText: "ingrese su email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: "Contraseña",
                        hintText: "ingrese su contraseña",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su contraseña';
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _submit();
                },
                child: Text("Enviar")),
          ],
        )));
  }
}
