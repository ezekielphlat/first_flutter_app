import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            icon: const Icon(Icons.add_shopping_cart),
            label: const Text("just some label"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                fixedSize:const  Size(300, 80),
                textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                backgroundColor:Colors.deepOrange,
                foregroundColor: Colors.white,
                elevation: 15.0,
                shadowColor: Colors.grey,
                //side: BorderSide(color: Colors.black, width: 2),
                //alignment: Alignment.topLeft
                shape:const StadiumBorder()
            ),
          ),
        ),
      ),
    );
  }
}
