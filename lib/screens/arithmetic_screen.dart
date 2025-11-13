import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  //controller
  final TextEditingController firstController = TextEditingController(
    text: "",
  );
  final TextEditingController secondController = TextEditingController(
    text: "",
  );

  // int first = 0;
  // int second = 0;
  int result = 0;

  //special global key for form
  final _formKey = GlobalKey<FormState>();

  void add(int first, int second) {
    setState(() {
      result = first + second;
    });
  }

  void subtract(int first, int second) {
    setState(() {
      result = first - second;
    });
  }

  void product(int first, int second) {
    setState(() {
      result = first * second;
    });
  }

  void division(int first, int second) {
    setState(() {
      result = first ~/ second;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Arithmetic Calculation",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  //validation
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   second = int.tryParse(value) ?? 0;
                  // },
                  controller: firstController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter first number";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   first = int.tryParse(value) ?? 0;
                  // },
                  controller: secondController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter first number";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //validation
                    if (_formKey.currentState?.validate() == true) {
                      add(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text(
                    "Sum",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //validation
                    if (_formKey.currentState?.validate() == true) {
                      //logic
                      subtract(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text(
                    "Subtract",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //validation
                    if (_formKey.currentState?.validate() == true) {
                      //logic
                      product(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text(
                    "Product",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //validation
                    if (_formKey.currentState?.validate() == true) {
                      //logic
                      division(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  child: Text(
                    "Division",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(height: 8),

              Text("Result is : $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
