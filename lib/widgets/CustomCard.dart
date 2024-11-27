import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String urlImage;
  CustomCard(this.urlImage);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 540, // Altura de la sección
      child: Container(
        padding: EdgeInsets.all(0),
        child: Card(
          color: Colors.red,
          child: Column(
            children: [
              Image.network(urlImage,
                width: 100, height: 100,),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}