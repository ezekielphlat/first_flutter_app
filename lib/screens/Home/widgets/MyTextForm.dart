import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({
    super.key,
    required TextEditingController fieldController,
    required this.labelText,
    this.prefixIcon = Icons.label
  }) : _fieldController = fieldController;

  final TextEditingController _fieldController;
  final String labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value == null || value.isEmpty){
          return "Please enter some text";
        }else{
          return null;
        }
      },
      controller: _fieldController,
      // onChanged: (val){
      //   _updateText(val);
      // },
      decoration:  InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(prefixIcon),
          border: const OutlineInputBorder()
      ),
    );
  }
}