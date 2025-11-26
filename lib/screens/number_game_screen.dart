import 'package:flutter/material.dart';

class NumberGameScreen extends StatefulWidget {
  const NumberGameScreen({super.key});

  @override
  State<NumberGameScreen> createState() => _NumberGameScreenState();
}

class _NumberGameScreenState extends State<NumberGameScreen> {
  int correct = 0;
  int incorrect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Number Generator Game",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 700,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Column(
              children: [
                SizedBox(height: 16),
                Text(
                  "Number Game",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
        
                SizedBox(height: 50),
        
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            89,
                            180,
                            255,
                          ),
                          fixedSize: const Size(120, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text(
                          "20",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
        
                      Spacer(flex: 1),
        
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            89,
                            180,
                            255,
                          ),
                          fixedSize: const Size(120, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: Text(
                          "100",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(height: 70),
        
                Container(
                  width: 350,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "Score",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Correct    : $correct",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 8, 159, 119)
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Incorrect : $incorrect",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),
                      ),
                      SizedBox(height: 40),
        
                      Center(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.green),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            "You Loose!!!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 116, 78, 231),
                    fixedSize: const Size(120, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
