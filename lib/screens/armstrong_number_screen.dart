import 'package:flutter/material.dart';
import 'dart:math';

class ArmstrongNumberScreen extends StatefulWidget {
  const ArmstrongNumberScreen({super.key});

  @override
  State<ArmstrongNumberScreen> createState() => _ArmstrongNumberScreenState();
}

class _ArmstrongNumberScreenState extends State<ArmstrongNumberScreen> {
  String result = "";

  final TextEditingController armstrongController = TextEditingController(
    text: "",
  );

  final _formKey4 = GlobalKey<FormState>();

  void checkArmstrong(int number) {
    String numberInString = number.toString();
    int numberOfDigits = numberInString.length;
    int temp = number;

    int sum = 0;
    while (temp > 0) {
      int digit = temp % 10;
      sum += pow(digit, numberOfDigits).toInt();
      temp ~/= 10;
    }

    setState(() {
      if (sum == number) {
        result = "Armstrong Number";
      } else {
        result = "Not Armstrong Number";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Armstrong Number Checker",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Form(
          key: _formKey4,
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: armstrongController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter a number",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please enter a number";
                    }
                     if (int.tryParse(value) == null) {
                      return "Enter a valid integer";
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
                    if (_formKey4.currentState?.validate() == true) {
                      checkArmstrong(int.parse(armstrongController.text));
                    }
                  },
                  child: Text(
                    "Check Armstrong",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                result,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
