import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final _formKey3 = GlobalKey<FormState>();
  final TextEditingController principleController = TextEditingController(
    text: "",
  );
  final TextEditingController timeController = TextEditingController(text: "");
  final TextEditingController rateController = TextEditingController(text: "");
  double result = 0;

  void calcSimpleInterest(double principle, double time, double rate) {
    setState(() {
      result = (principle * time * rate) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simple Interest",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Form(
          key: _formKey3,
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: principleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the principle",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the principle";
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
                  controller: timeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the time",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the time";
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
                  controller: rateController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the rate",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the rate";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey3.currentState?.validate() == true) {
                      calcSimpleInterest(
                        double.parse(principleController.text),
                        double.parse(timeController.text),
                        double.parse(rateController.text),
                      );
                    }
                  },
                  child: Text(
                    "Calculate SI",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "The Simple Interest is $result",
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
