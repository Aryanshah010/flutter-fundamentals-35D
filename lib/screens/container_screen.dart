import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"), backgroundColor: Colors.blue),
        body: Container(
          alignment: Alignment.centerRight,
          height: double.infinity,
          width: double.infinity,
          child: Text("Hello"),
        ),
        // body: Center(
        //   child: Container(
        //     height: 200,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Text("Hello World"),
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Colors.amber,
        //       border: Border.all(color: Colors.black, width: 2),
        //     ),
        //   ),
        // ),
      );
  }
}
