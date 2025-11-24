import 'package:batch_35d_classwork/common/snackbar/my_snackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                showMySnackBar(
                  context: context,
                  message: "I am container 1",
                  color: Colors.green,
                );
              },
              child: Container(
                width: double.infinity,
                // height: 400,
                color: Colors.yellow,
                child: Text("Container 1"),
              ),
            ),
          ),
          Expanded(
            //fit:  FlexFit.tight,
            flex: 3,
            child: GestureDetector(
              onTap: () {
                showMySnackBar(
                  context: context,
                  message: "I am container 2",
                  color: Colors.red,
                );
              },
              child: Container(
                width: double.infinity,
                // height: 300,
                color: Colors.green,
                child: Text("Container 2"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
