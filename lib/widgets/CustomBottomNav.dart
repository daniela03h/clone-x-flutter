import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(color: Colors.grey), // Borde superior
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_filled,
              color: Colors.white,
              size:  35
            ),
             Icon(
              Icons.search,
              color: Colors.white,
              size:  35
            ),
            Icon(
              Icons.crop_square,
              color: Colors.white,
              size:  35
            ),
            Icon(
              Icons.people_outlined,
              color: Colors.white,
              size:  35
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
              size:  35
            ),
             Icon(
              Icons.mail,
              color: Colors.white,
              size:  35
            ),
          ],
        ),
      ),
    );
  }
}
