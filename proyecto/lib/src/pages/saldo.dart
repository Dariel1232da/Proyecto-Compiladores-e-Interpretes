import 'package:flutter/material.dart';

class BalanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saldo de Préstamos y Ahorros')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Información del préstamo
            Text('ID del Cliente: 12345', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('ID del Préstamo: 67890', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Tasa de Interés: 5.5%', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),

            // Label Movimientos
            Text('Movimientos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            // Información del préstamo (movimientos)
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Plazo: 24 meses', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Monto: \$10,000', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Estado: Aprobado', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Fecha de Creación: 01 de Enero, 2024', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Fecha del Préstamo: 15 de Enero, 2024', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Saldo: \$9,500', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
