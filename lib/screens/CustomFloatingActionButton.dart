import 'package:flutter/material.dart';
class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: (){},
      backgroundColor: Colors.deepOrange,
      foregroundColor: Colors.white,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      //   side: BorderSide(color: Colors.blue, width: 2.0, style: BorderStyle.solid )
      // )
      shape: const CircleBorder(),
        child: const Icon(Icons.add),

    );
  }
}
