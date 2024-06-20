import 'package:flutter/material.dart';

class CustomRowsAndColumns extends StatelessWidget {
  const CustomRowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rows and Columns"),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body:  Container(

          child: const Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone, size:45.0),
                      Text('Phone')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.location_city, size:45.0),
                      Text('Location')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.flutter_dash, size:45.0),
                      Text('Flutter')
                    ],
                  )
                ],
              ),
              const Row(
                children: [
                  Expanded(child: Image(image: AssetImage('images/profilepics.jpg'),width: 200.0,)),
                  Expanded( flex: 2,child: Image(image: AssetImage('images/profilepics.jpg'),width: 200.0,)),
                  Expanded( flex: 4,child: Image(image: AssetImage('images/profilepics.jpg'),width: 200.0,))
                ],
              )
            ],
          ),
        )
    );
  }
}
