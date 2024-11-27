import 'package:flutter/material.dart';
import 'package:proyecto/src/app.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  // Datos estáticos de login (usuario y contraseña predefinidos)
  final String _correctUsername = "juan";
  final String _correctPassword = "1234";

  void _login() {
    if (_usernameController.text == _correctUsername && _passwordController.text == _correctPassword) {
      // Si las credenciales son correctas, navega a la pantalla principal
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      // Si las credenciales son incorrectas, mostrar mensaje de error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error de Login"),
          content: Text("Usuario o contraseña incorrectos."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cerrar"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: "Usuario"),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: "Contraseña"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text("Iniciar sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
