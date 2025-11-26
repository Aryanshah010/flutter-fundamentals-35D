import 'package:batch_35d_classwork/widgets/my_button_widget.dart';
import 'package:batch_35d_classwork/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomWidgetScreen extends StatefulWidget {
  const CustomWidgetScreen({super.key});

  @override
  State<CustomWidgetScreen> createState() => _CustomWidgetScreenState();
}

class _CustomWidgetScreenState extends State<CustomWidgetScreen> {
  int result = 0;

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void add(int a, int b) {
    setState(() => result = a + b);
  }

  void subtract(int a, int b) {
    setState(() => result = a - b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        backgroundColor: const Color.fromARGB(255, 1, 251, 160),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text("Hello World!"),

              MyTextFormField(
                controller: firstController,
                text: "Enter first number",
              ),

              SizedBox(height: 10),

              MyTextFormField(
                controller: secondController,
                text: "Enter second number",
              ),

              SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: MyButtonWidget(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      add(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  text: "Add",
                  color: Colors.amber,
                ),
              ),

              SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: MyButtonWidget(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      subtract(
                        int.parse(firstController.text),
                        int.parse(secondController.text),
                      );
                    }
                  },
                  text: "Subtract",
                  color: Colors.green,
                ),
              ),

              SizedBox(height: 10),

              Text("Result is: $result", style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
