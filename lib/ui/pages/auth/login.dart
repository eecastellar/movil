import 'package:ejemplo_1/ui/pages/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controlUser = TextEditingController();
  TextEditingController controlPass = TextEditingController();
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
              const CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundImage: AssetImage('images/logoSena.png'),
              ),
              TextField(
                controller: controlUser,
                decoration: const InputDecoration(labelText: 'Usuario'),
              ),
              TextField(
                controller: controlPass,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Contraseña'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                          'https://www.sena.edu.co/es-co/Paginas/default.aspx');
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.orange,
                        backgroundColor: Color.fromARGB(255, 247, 246, 245)),
                    child: Text("Inicio"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      MaterialPageRoute(builder: (context) => const registro());
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.orange,
                        backgroundColor: Color.fromARGB(255, 247, 246, 245)),
                    child: Text("Registrarse"),
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
