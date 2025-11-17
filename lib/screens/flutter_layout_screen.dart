import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),

          child: Row(
            // spacing: 25,
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.call, size: 45.0, color: Colors.black),
                  Text(
                    "Call",
                    style: TextStyle(color: Colors.red, fontSize: 25.0),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.send, size: 45.0, color: Colors.blue),
                  Text(
                    "ROUTE",
                    style: TextStyle(color: Colors.red, fontSize: 25.0),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.share, size: 45.0, color: Colors.blue),
                  Text(
                    "SHARE",
                    style: TextStyle(color: Colors.red, fontSize: 25.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
