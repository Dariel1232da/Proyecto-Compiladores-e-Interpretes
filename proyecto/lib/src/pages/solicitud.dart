import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Solicitudes del Cliente')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Solicitud #1'),
              subtitle: Text('Estado: Pendiente'),
            ),
            ListTile(
              title: Text('Solicitud #2'),
              subtitle: Text('Estado: Aprobada'),
            ),
            ListTile(
              title: Text('Solicitud #3'),
              subtitle: Text('Estado: Rechazada'),
            ),
          ],
        ),
      ),
    );
  }
}
