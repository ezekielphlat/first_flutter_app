
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        width: 340.0,
        height: 240.0,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            //borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey, width: 6.0),
            shape: BoxShape.circle,
            image: const DecorationImage(image: AssetImage("images/profilepics.jpg")),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset:const Offset(4,4)
              )
            ]


        ),
        // child: const Text(
        //   "Boring",
        //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.deepOrange),
        // ),
      ),
    );
  }
}
