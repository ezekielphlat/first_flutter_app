import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  CustomListViewBuilder({super.key});

  final List<String> products = ["Bed", "Sofa", "Chair"];
  final List<String> productionDetails = [
    "soft bed for your home",
    "comfortable sofa",
    "luxury chair"
  ];
  final List<double> price = [20.9, 30.2, 300.2];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(products[index][0]),),
            title: Text(products[index]),
            subtitle:Text(productionDetails[index]),
            trailing:Text(price[index].toString()),
          );
        });
  }
}
