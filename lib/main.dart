import 'package:first_flutter_app/screens/Home/form.dart';
import 'package:flutter/material.dart';

void main() => runApp(EPStatelessClass());

class EPStatelessClass extends StatelessWidget {
  const EPStatelessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm()
    );
  }
}

class EPStatefulClass extends StatefulWidget {
  const EPStatefulClass({super.key});

  @override
  State<EPStatefulClass> createState() => _EPStatefulClassState();
}

class _EPStatefulClassState extends State<EPStatefulClass> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Mike and mile"),
          trailing: IconButton(
            icon: liked? const Icon(Icons.favorite): const Icon(Icons.favorite_border),
            onPressed: () {
              setState(() =>
                liked = !liked
              );

            },
          ),
        )
      ],
    );
  }
}
