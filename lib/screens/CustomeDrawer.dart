import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,

      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
           decoration: BoxDecoration(
             color: Colors.deepOrange,
           ),
           accountEmail: Text('ezekielphlat@gmail.com'),
            accountName: Text('Coding with ephlat'),
            currentAccountPicture: CircleAvatar(foregroundImage:  AssetImage("images/profilepics.jpg"),),
          ),
          ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: (){},),
          ListTile(leading: const Icon(Icons.shopping_cart), title: const Text('Shop'), onTap: (){},),
          ListTile(leading: const Icon(Icons.favorite), title: const Text('Favorite'), onTap: (){},),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text('Labels'),
          ),
          ListTile(leading: const Icon(Icons.label), title: const Text('Red'), onTap: (){},),
          ListTile(leading: const Icon(Icons.label), title: const Text('Orange'), onTap: (){},),
          ListTile(leading: const Icon(Icons.label), title: const Text('Yellow'), onTap: (){},),
        ],
      ),
    );
  }
}
