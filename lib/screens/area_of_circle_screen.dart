import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double result = 0.0;
  final TextEditingController radiusController = TextEditingController(
    text: "0",
  );
  final _formKey2 = GlobalKey<FormState>();

  void areaOfCircle(double radius) {
    setState(() {
      double r = 3.14 * radius * radius;
      String formatString = r.toStringAsFixed(2);
      result = double.parse(formatString);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Area of Circle",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Form(
          key: _formKey2,
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: radiusController,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    labelText: "Enter the radius",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the radius";
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
                    if (_formKey2.currentState?.validate() == true) {
                      areaOfCircle(double.parse(radiusController.text));
                    }
                  },
                  child: Text(
                    "Calculate AOC",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Text("Area of circle is: $result"),
            ],
          ),
        ),
      ),
    );
  }
}
