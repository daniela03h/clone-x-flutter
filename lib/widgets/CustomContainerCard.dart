

import 'package:clone_x/widgets/CustomCard.dart';
import 'package:flutter/material.dart';

class CustomContainerCard extends StatelessWidget {
  // const CustomContainerCard({super.key});
  String urlImage;
  CustomContainerCard(this.urlImage);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ancho de la sección
      // height: 800, // Altura de la sección
      child: Container(
        color: Colors.black,
        child: Container(
              child: CustomCard(urlImage) 
            )
      ),
    );
  }
}