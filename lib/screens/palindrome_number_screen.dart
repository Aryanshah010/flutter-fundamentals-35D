import 'package:flutter/material.dart';

class PalindromeNumberScreen extends StatefulWidget {
  const PalindromeNumberScreen({super.key});

  @override
  State<PalindromeNumberScreen> createState() => _PalindromeNumberScreenState();
}

class _PalindromeNumberScreenState extends State<PalindromeNumberScreen> {
  String result = "";

  final _formKey2 = GlobalKey<FormState>();

  final TextEditingController palindromeController = TextEditingController(
    text: "",
  );

  void checkPalindrome(int number) {
    int temp = number;
    int revNum = 0;
    while (temp > 0) {
      int digit = temp % 10;
      revNum = revNum * 10 + digit;
      temp ~/= 10;
    }
    setState(() {
      if (revNum == number) {
        result = "Palindrome Number";
      } else {
        result = "Not a Palindrome Number";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Palindrome Checker",
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
                  controller: palindromeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter a number",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a number";
                    }
                     if (int.tryParse(value) == null) {
                      return "Enter a valid integer";
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
                    if (_formKey2.currentState?.validate() == true) {
                      checkPalindrome(int.parse(palindromeController.text));
                    }
                  },
                  child: Text(
                    "Check Palindrome",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(height: 16),
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
