import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String urlImage;
  CustomCard(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500, // Altura de la sección
      child: Container(
        padding: EdgeInsets.all(0),
        child: Card(
          color: Colors.black,
          child: Column(
            children: [
              Row(
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
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Para que el Row no ocupe todo el espacio disponible
                      children: <Widget>[
                        Text(
                          'Flutter',
                          style: TextStyle(
                            color: Colors.white, // Color del texto blanco
                            fontSize: 18, // Tamaño del texto
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '@FlutterDev Nov 25',
                          style: TextStyle(
                            color: Colors.white, // Color del texto blanco
                            fontSize: 16, // Tamaño del texto
                          ),
                        ),
                        SizedBox(width: 100.0),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                          size: 24, // Tamaño del ícono
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0), // Espacio vertical
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'The Feedback package simplifies the process for users, allowing them to provide input directly within your app.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20), // Espaciado entre los textos
                  Image.network(
                    urlImage,
                    width: 700,
                    height: 250,
                  ),
                  const SizedBox(height: 20), // Espaciado entre los textos
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            color: Colors.grey), // Borde superior
                        bottom: BorderSide(
                            color: Colors.grey), // Borde inferior
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 8.0), // Padding interno
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.comment, color: Colors.grey, size: 25),
                          Icon(Icons.repeat, color: Colors.grey, size: 25),
                          Icon(Icons.favorite_border,
                              color: Colors.grey, size: 25),
                          Icon(Icons.bookmark_border,
                              color: Colors.grey, size: 25),
                          Icon(Icons.share, color: Colors.grey, size: 25),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
