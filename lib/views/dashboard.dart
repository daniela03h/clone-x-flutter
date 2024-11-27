import 'package:clone_x/widgets/CustomAppbar.dart';
import 'package:clone_x/widgets/CustomBottomNav.dart';
import 'package:clone_x/widgets/CustomContainerCard.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                CustomContainerCard('https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                CustomContainerCard('https://images.pexels.com/photos/29315816/pexels-photo-29315816/free-photo-of-elegantes-cisnes-junto-al-agua-en-un-dia-tranquilo.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                CustomContainerCard('https://images.pexels.com/photos/29137971/pexels-photo-29137971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                CustomContainerCard('https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                CustomContainerCard('https://images.pexels.com/photos/27549655/pexels-photo-27549655/free-photo-of-cielo-moda-hombre-mano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ],
            ),
          ),
          CustomBottomNav()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: CustomFABLocation(),
    );
  }
}

class CustomFABLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    double x = scaffoldGeometry.scaffoldSize.width - 65;
    double y = scaffoldGeometry.scaffoldSize.height - 155;
    return Offset(x, y);
  }
}
