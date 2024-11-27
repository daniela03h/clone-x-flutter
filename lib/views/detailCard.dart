import 'package:clone_x/views/dashboard.dart';
import 'package:flutter/material.dart';

class Detailcard extends StatelessWidget {
  const Detailcard({super.key});

 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()), // Reemplaza con tu vista Dashboard
              );
            },
            child: Text('volver al inicio'),
          ),
          SizedBox(height: 16), // Espacio entre el botón y el texto
          Text('Hola'), // El texto dentro del card
        ],
      ),
    );
  }
}