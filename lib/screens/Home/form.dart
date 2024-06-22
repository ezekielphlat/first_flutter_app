import 'package:first_flutter_app/screens/Home/details.dart';
import 'package:first_flutter_app/screens/Home/widgets/MyTextForm.dart';
import 'package:flutter/material.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // @override
  // void initState() {
  //   super.initState();
  //   _productController.addListener(_updateText);
  // }

  // void _updateText(){
  //   setState(() {
  //     _productName = _productController.text;
  //   });
  // }
  _MyFormState() {
    _selectedVal = _productSizeList[0];
  }

  final _productNameController = TextEditingController();
  final _productDescController = TextEditingController();
  bool? _checkBox, _listStyleCheckBox = false;
  ProductTypeEnum? _productTypeEnum;
  final _productSizeList = ['Small', 'Medium', 'Large', 'XLarge'];
  String? _selectedVal = "";
final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _productNameController.dispose();
    _productDescController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                  child: Column(
                children: [
                  MyTextForm(
                    fieldController: _productNameController,
                    labelText: "Production Name",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MyTextForm(
                    fieldController: _productDescController,
                    labelText: "Production Description",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // Checkbox(
                  //     checkColor: Colors.white,
                  //     activeColor: Colors.deepPurple,
                  //     tristate: true,
                  //     // returns true, false or null
                  //     value: _checkBox,
                  //     onChanged: (val) {
                  //       setState(() {
                  //         _checkBox = val;
                  //       });
                  //     }),
                  CheckboxListTile(
                      contentPadding: const EdgeInsets.all(0.0),
                      value: _listStyleCheckBox,
                      title: const Text("Top Product"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          _listStyleCheckBox = val;
                        });
                      }),
                  // create radio widget
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            tileColor: Colors.deepPurple.shade50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            dense: true,
                            contentPadding: const EdgeInsets.all(0.0),
                            value: ProductTypeEnum.Downloadable,
                            groupValue: _productTypeEnum,
                            title: Text(ProductTypeEnum.Downloadable.name),
                            onChanged: (val) {
                              setState(() {
                                _productTypeEnum = val;
                              });
                            }),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: RadioListTile(
                            dense: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            tileColor: Colors.deepPurple.shade50,
                            contentPadding: const EdgeInsets.all(0.0),
                            value: ProductTypeEnum.Deliverable,
                            groupValue: _productTypeEnum,
                            title: Text(ProductTypeEnum.Deliverable.name),
                            onChanged: (val) {
                              setState(() {
                                _productTypeEnum = val;
                              });
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // DropdownButton(
                  //     value: _selectedVal,
                  //     items: _productSizeList.map((e) {
                  //       return DropdownMenuItem(
                  //         child: Text(e),
                  //         value: e,
                  //       );
                  //     }).toList(),
                  //     onChanged: (val) {
                  //       setState(() {
                  //         _selectedVal = val as String;
                  //       });
                  //     }),

                  DropdownButtonFormField(
                    value: _selectedVal,
                    items: _productSizeList.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedVal = val as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.deepPurple,
                    ),
                    dropdownColor: Colors.deepPurple.shade50,
                    decoration: const InputDecoration(
                        labelText: "Product Sizes",
                        prefixIcon: Icon(
                          Icons.account_balance,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder()
                    ),

                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MyBtn(context)
                ],
              )),

            ],
          ),
        ),
      ),
    );
  }

  OutlinedButton MyBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productName: _productNameController.text,
              productDescription: _productDescController.text,
            );
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
