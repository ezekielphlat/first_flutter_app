import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Container(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.alarm_on_sharp),
              title: Text('Sales'),
              subtitle: Text('Sales of the week'),
              trailing: Icon(Icons.add),
            )
          ],
        )
      )
    );
  }
}
