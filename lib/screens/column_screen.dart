import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Layout Example'),
      ),
      body: Container(
        width: 250,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 71, 55, 55)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('Red Box')),
            ),
            const SizedBox(height: 20),
            Container(
              width: 150,
              height: 80,
              color: Colors.green,
              child: const Center(child: Text('Green Box')),
            ),
            const SizedBox(height: 20),
            Container(
              width: 80,
              height: 120,
              color: Colors.blue,
              child: const Center(child: Text('Blue Box')),
            ),
          ],
        ),
      ),
    );
  }
}
