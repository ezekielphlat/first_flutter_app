import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(

      children:  [

        ListTile(
          leading: const Icon(Icons.alarm_on_sharp),
          title: const Text('Sales'),
          subtitle: const Text('Sales of the week'),
          trailing: const Icon(Icons.add),
          onTap: (){},
          tileColor: Colors.brown.shade50,

        ),
        const SizedBox(height: 2.0), // Adds a space of 10 pixels

        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Customers'),
          subtitle: const Text('Sales of the week'),
          trailing: const Icon(Icons.add),
          onTap: (){},
          tileColor: Colors.brown.shade50,
        ),
        const SizedBox(height: 2.0), // Adds a space of 10 pixels

        ListTile(
          leading: const Icon(Icons.currency_bitcoin),
          title: const Text('Profit'),
          subtitle: const Text('Sales of the week'),
          trailing: const Icon(Icons.add),
          onTap: (){},
          tileColor: Colors.brown.shade50,
        ),

      ],
    );
  }
}
