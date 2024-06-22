import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String productName;
  String productDescription;

  Details(
      {super.key, required this.productName, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Details"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text(productName),
                subtitle: Text(productDescription),
                trailing: const Icon(Icons.shopping_cart),
              )
            ],
          ),
        ));
  }
}
