// Define un widget de formulario personalizado
import 'package:flutter/material.dart';

class registro extends StatefulWidget {
  const registro({Key? key}) : super(key: key);
  @override
  State<registro> createState() => NuevoUsuario();
}

// Define una clase de estado correspondiente. Esta clase contendrá los datos
// relacionados con el formulario.
class NuevoUsuario extends State<registro> {
  TextEditingController CEDULA = TextEditingController();
  TextEditingController NOMBRES = TextEditingController();
  TextEditingController APELLIDOS = TextEditingController();
  TextEditingController F_NACIMIENTO = TextEditingController();
  TextEditingController CORREO = TextEditingController();
  TextEditingController TELEFONO = TextEditingController();
  TextEditingController DIRECCION = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: CEDULA,
                decoration:
                    const InputDecoration(labelText: 'Digite su cedula'),
              ),
              TextField(
                controller: NOMBRES,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Digite sus nombres'),
              ),
              TextField(
                controller: APELLIDOS,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Digite sus apellidos'),
              ),
              TextField(
                controller: F_NACIMIENTO,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Digite su fecha de nacimiento'),
              ),
              TextField(
                controller: CORREO,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Digite su correo'),
              ),
              TextField(
                controller: TELEFONO,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Digite su telefono'),
              ),
              TextField(
                controller: DIRECCION,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Digite su direccion'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Colors.orange,
                        backgroundColor: Color.fromARGB(255, 247, 246, 245)),
                    child: Text("GUARDAR"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
