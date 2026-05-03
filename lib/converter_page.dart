import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/widgets/input_field.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ConverterPageState();
  }
}

class _ConverterPageState extends State {
  TextEditingController _controller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("converter page"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.brown.shade300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          controller: passcontroller,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (passcontroller.text.isEmpty) {
                              return "Field is empty!!";
                            }
                            return null;
                          },
                          hintText: "Enter Password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InputField(
                            controller: _controller,
                            keyboardType: TextInputType.numberWithOptions(
                              signed: true,
                              decimal: true,
                            ),
                            validator: (value) {
                              if (_controller.text.isEmpty) {
                                return "Field is empty!!";
                              }
                              return null;
                            },
                            hintText: "Enter Amount",
                            labelText: "USD",
                            prefixIcon: Icon(Icons.attach_money),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      result = 0;
                      if (_formKey.currentState!.validate()) {
                        result = double.parse(_controller.text) * 122.95;
                      }
                      setState(() {});
                    },
                    child: Text("Convert"),
                  ),
                  SizedBox(height: 10),
                  Text("BDT: $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
