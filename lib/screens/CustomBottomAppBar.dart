import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      notchMargin: 5.0,
      shape: CircularNotchedRectangle(),
      color: Colors.deepOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [

          Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Icon(Icons.home, color: Colors.white,),
                Text("Home", style: TextStyle(color:Colors.white,))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Icon(Icons.shopping_cart, color: Colors.white,),
                Text("Shop", style: TextStyle(color:Colors.white,))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Icon(Icons.favorite, color: Colors.white,),
                Text("Fav",style: TextStyle(color:Colors.white,))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: [
                Icon(Icons.settings, color: Colors.white,),
                Text("Settings", style: TextStyle(color:Colors.white,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
