import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil del Cliente')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Avatar de la persona
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Información del cliente
            Text('ID del Cliente: 12345', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Nombre: Juan Pérez', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Dirección: Calle Ficticia 123, Ciudad X', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Correo: juanperez@gmail.com', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Edad: 30 años', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Número de Teléfono: 123-456-7890', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Número de Cuenta: 987654321', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Fecha de Nacimiento: 15 de Marzo, 1994', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Número Telefónico: 987-654-3210', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
