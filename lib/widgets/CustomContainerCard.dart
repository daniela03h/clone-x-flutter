

import 'package:clone_x/widgets/CustomCard.dart';
import 'package:flutter/material.dart';

class CustomContainerCard extends StatelessWidget {
  // const CustomContainerCard({super.key});
  String urlImage;
  CustomContainerCard(this.urlImage);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity, // Ancho de la sección
      // height: 540, // Altura de la sección
      child: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: 10, // Número de tarjetas a mostrar
          itemBuilder: (context, index) {
            return Container(
              child: CustomCard(urlImage) 
            );
          },
        ),
      ),
    );
  }
}