import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Text class",
          style: TextStyle(color: const Color.fromARGB(255, 46, 44, 44)),
        ),
        backgroundColor: const Color.fromARGB(255, 161, 233, 19),
      ),

      body: RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 30),
          children: <TextSpan>[
            TextSpan(
              text: "H",
              style: TextStyle(
                color: Color.fromARGB(255, 226, 15, 15),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextSpan(
              text: "ello ",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),

            TextSpan(
              text: "bold",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            
            TextSpan(text: " World!"),
          ],
        ),
      ),
    );
  }
}
