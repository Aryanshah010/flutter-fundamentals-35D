import 'package:flutter/material.dart';

class Arithmetic2Screen extends StatefulWidget {
  const Arithmetic2Screen({super.key});

  @override
  State<Arithmetic2Screen> createState() => _Arithmetic2ScreenState();
}

class _Arithmetic2ScreenState extends State<Arithmetic2Screen> {
  int result = 0;

  final TextEditingController firstController = TextEditingController(text: "");
  final TextEditingController secondController = TextEditingController(
    text: "",
  );

  final _formKey = GlobalKey<FormState>();

  Function(int, int)? selectedOperation;

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

  void multiply(int first, int second) {
    setState(() {
      result = first * second;
    });
  }

  void divide(int first, int second) {
    setState(() {
      result = first ~/ second;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic2 Screen"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),

              TextFormField(
                keyboardType: TextInputType.number,
                controller: firstController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 8),

              TextFormField(
                keyboardType: TextInputType.number,
                controller: secondController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter second number";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 8),

              Column(
                children: [
                  RadioListTile<Function(int, int)>(
                    title: const Text("Add"),
                    value: add,
                    groupValue: selectedOperation,
                    onChanged: (value) {
                      setState(() => selectedOperation = value);
                    },
                  ),
                  RadioListTile<Function(int, int)>(
                    title: const Text("Subtract"),
                    value: subtract,
                    groupValue: selectedOperation,
                    onChanged: (value) {
                      setState(() => selectedOperation = value);
                    },
                  ),
                  RadioListTile<Function(int, int)>(
                    title: const Text("Multiply"),
                    value: multiply,
                    groupValue: selectedOperation,
                    onChanged: (value) {
                      setState(() => selectedOperation = value);
                    },
                  ),
                  RadioListTile<Function(int, int)>(
                    title: const Text("Divide"),
                    value: divide,
                    groupValue: selectedOperation,
                    onChanged: (value) {
                      setState(() => selectedOperation = value);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 8),

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (selectedOperation == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Select an operation")),
                      );
                      return;
                    }

                    final first = int.parse(firstController.text);
                    final second = int.parse(secondController.text);

                    selectedOperation!(first, second);
                  }
                },
                child: const Text("Calculate"),
              ),

              Text("Result: $result"),
            ],
          ),
        ),
      ),
    );
  }
}
