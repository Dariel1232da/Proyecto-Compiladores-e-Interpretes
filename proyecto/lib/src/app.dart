import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/cliente.dart';
import 'package:proyecto/src/pages/crearsolicitud.dart';
import 'package:proyecto/src/pages/login.dart';
import 'package:proyecto/src/pages/saldo.dart';
import 'package:proyecto/src/pages/solicitud.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(), // Inicia en la pantalla de login
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
     
    return Scaffold(
     
      appBar: AppBar(title: Text('Menú Principal')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Perfil del Cliente'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Saldo en Préstamos y Ahorros'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BalanceScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Solicitudes del Cliente'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RequestsScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Crear Solicitudes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateRequestScreen()),
              );

            },

          ),
        ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.white),  // Icono de cierre de sesión con color blanco
            title: Text(
              'Cerrar sesión',
              style: TextStyle(color: Colors.white),  // Texto en blanco
            ),
            tileColor: Colors.red,  // Fondo rojo
            onTap: () {
              // Redirigir al Login al hacer tap en el ListTile
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (Route<dynamic> route) => false,  // Esto elimina la pila de navegación anterior
              );
            },
          ),
        ],
      ),
    );
  }
}


