import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      //textDirection: TextDirection.ltr,
      children: [
        Positioned(
          child: Container(
            width: 300,
            height: 200,
            color: Colors.green,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 200,
            height: 100,
            color: Colors.yellow,
          ),
        ),
        Container(
          width: 100,
          height: 50,
          color: Colors.blue,
        ),
      ],
    );
  }
}
