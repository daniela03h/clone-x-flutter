import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        height: 200,
        child: Padding(
          padding: EdgeInsets.only(
              top: 60.0, left: 30.0), // Padding de 50 píxeles arriba
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: CircleAvatar(
                      radius: 20, // Tamaño del avatar (puedes ajustarlo)
                      backgroundColor: Colors.grey[200], // Fondo gris
                      child: Icon(
                        Icons.person, // Ícono de persona
                        color: Colors.grey, // Color del ícono
                        size: 40, // Tamaño del ícono
                      ),
                    ),
                    onPressed: () {
                      // Acción cuando se presiona el primer IconButton
                      print('Iniciar sesión');
                    },
                  ),
                  Icon(
                    FontAwesomeIcons.xTwitter,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide(
                          color: Colors.white, width: 2), // Borde blanco
                      padding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                    onPressed: () {
                      // Acción cuando se presiona el botón
                      print('Iniciar sesión');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Para que el Row no ocupe todo el espacio disponible
                      children: <Widget>[
                        Icon(
                          Icons.star, // Ícono de estrella
                          color: Colors.yellow, // Color amarillo
                          size: 24, // Tamaño del ícono
                        ),
                        Text(
                          '40% off',
                          style: TextStyle(
                            color: Colors.white, // Color del texto blanco
                            fontSize: 16, // Tamaño del texto
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0), // Espacio vertical
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'For you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white,
                          decoration: TextDecoration.none, // Quitar subrayado
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 55,
                        height: 4,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  const SizedBox(width: 140), // Espaciado entre los textos
                  Column(
                    children: [
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.none, // Quitar subrayado
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
