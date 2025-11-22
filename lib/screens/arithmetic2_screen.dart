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
        title: Text("Arithmetic2 Screen"),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsetsGeometry.all(8),
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 8),
                TextFormField(
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
                SizedBox(height: 8),
                TextFormField(
                  //validation
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   second = int.tryParse(value) ?? 0;
                  // },
                  controller: secondController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter second number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                Column(
                  children: [
                    RadioListTile(title: Text("Add"), value: add),
                    RadioListTile(title: Text("Subtract"), value: subtract),
                    RadioListTile(title: Text("Multiply"), value: multiply),
                    RadioListTile(title: Text("Divide"), value: divide),
                  ],
                ),
                SizedBox(height: 8),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Calculate"),
                ),
                Text("Result: $result"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
