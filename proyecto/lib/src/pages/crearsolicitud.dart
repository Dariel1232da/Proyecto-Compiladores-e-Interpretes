import 'package:flutter/material.dart';

class CreateRequestScreen extends StatefulWidget {
  @override
  _CreateRequestScreenState createState() => _CreateRequestScreenState();
}

class _CreateRequestScreenState extends State<CreateRequestScreen> {
  final TextEditingController _clientIdController = TextEditingController();
  final TextEditingController _purposeController = TextEditingController();
  final TextEditingController _interestRateController = TextEditingController();
  final TextEditingController _termController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  // Función para simular la creación de la solicitud
  void _createRequest() {
    final clientId = _clientIdController.text;
    final purpose = _purposeController.text;
    final interestRate = _interestRateController.text;
    final term = _termController.text;
    final amount = _amountController.text;

    if (clientId.isNotEmpty &&
        purpose.isNotEmpty &&
        interestRate.isNotEmpty &&
        term.isNotEmpty &&
        amount.isNotEmpty) {
      // Mostrar un mensaje de confirmación
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Solicitud Creada"),
          content: Text("La solicitud ha sido creada con éxito:\n\n"
              "ID del Cliente: $clientId\n"
              "Propósito: $purpose\n"
              "Tasa de Interés: $interestRate%\n"
              "Plazo: $term meses\n"
              "Monto: \$ $amount"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: Text("OK"),
            ),
          ],
        ),
      );
    } else {
      // Si algún campo está vacío, mostrar un mensaje de error
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Por favor, complete todos los campos."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: Text("Cerrar"),
            ),
          ],
        ),
      );
    }
  }

  // Función para simular que la solicitud ha sido enviada
  void _sendRequest() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Solicitud Enviada"),
        content: Text("Tu solicitud ha sido enviada con éxito."),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cerrar el diálogo
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Crear Solicitud')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Campo ID del Cliente
            TextField(
              controller: _clientIdController,
              decoration: InputDecoration(
                labelText: 'ID del Cliente',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),

            // Campo Propósito
            TextField(
              controller: _purposeController,
              decoration: InputDecoration(
                labelText: 'Propósito del Préstamo',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Campo Tasa de Interés
            TextField(
              controller: _interestRateController,
              decoration: InputDecoration(
                labelText: 'Tasa de Interés (%)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 16),

            // Campo Plazo
            TextField(
              controller: _termController,
              decoration: InputDecoration(
                labelText: 'Plazo (meses)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),

            // Campo Monto
            TextField(
              controller: _amountController,
              decoration: InputDecoration(
                labelText: 'Monto del Préstamo',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 20),

            // Botón para crear solicitud
            ElevatedButton(
              onPressed: _createRequest,
              child: Text('Crear Solicitud'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 45), // Botón de tamaño grande
              ),
            ),
            SizedBox(height: 16),

            // Botón para enviar la solicitud
            ElevatedButton(
              onPressed: _sendRequest,
              child: Text('Enviar Solicitud'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 45), backgroundColor: Colors.green, // Color verde para indicar "enviar"
              ),
            ),
          ],
        ),
      ),
    );
  }
}

