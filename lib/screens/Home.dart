import 'package:first_flutter_app/screens/CustomBottomAppBar.dart';
import 'package:first_flutter_app/screens/CustomFloatingActionButton.dart';
import 'package:first_flutter_app/screens/CustomeDrawer.dart';
import 'package:first_flutter_app/screens/widgets/ListViewWidget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActionButton(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          ListTileWidget(
            title: "Mouse",
            subTitle: "Just some Mouse",
          ),
          ListTileWidget(
            title: "Laptop",
            subTitle: "Buy your laptop sharp",
            leadingIcon: Icons.laptop,
            listTileColor: Colors.brown.shade50,
            iconColor: Colors.green,
          ),
          ListTileWidget(
            title: "Phone",
            subTitle: "Sell your phone and more",
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
