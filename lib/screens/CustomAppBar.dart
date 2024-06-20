import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:  IconButton(icon: const Icon(Icons.menu), onPressed: (){},),
      title: const Text("Home"),
      actions:  [
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.search),)
      ],
      backgroundColor: Colors.purple.withOpacity(0.7),
      foregroundColor: Colors.white,
      elevation: 10.0,
      shadowColor: Colors.grey,
      centerTitle: true,
      // shape: const RoundedRectangleBorder(
      //   borderRadius:  BorderRadius.vertical(bottom: Radius.circular(20))
      // ),
    );
  }
}
