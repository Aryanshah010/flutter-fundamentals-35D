import 'package:batch_35d_classwork/screens/area_of_circle_screen.dart';
import 'package:batch_35d_classwork/screens/arithmetic2_screen.dart';
import 'package:batch_35d_classwork/screens/arithmetic_screen.dart';
import 'package:batch_35d_classwork/screens/armstrong_number_screen.dart';
import 'package:batch_35d_classwork/screens/column_screen.dart';
import 'package:batch_35d_classwork/screens/container_screen.dart';
import 'package:batch_35d_classwork/screens/flexible_expanded_screen.dart';
import 'package:batch_35d_classwork/screens/flutter_layout_screen.dart';
import 'package:batch_35d_classwork/screens/image_view_screen.dart';
import 'package:batch_35d_classwork/screens/palindrome_number_screen.dart';
import 'package:batch_35d_classwork/screens/rich_text_screen.dart';
import 'package:batch_35d_classwork/screens/row_screens.dart';
import 'package:batch_35d_classwork/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 149, 217),
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 215, 212, 219),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArithmeticScreen(),
                      ),
                    );
                  },
                  child: Text("Arithmetic", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SimpleInterestScreen(),
                      ),
                    );
                  },
                  child: Text("Simple Interest", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AreaOfCircleScreen(),
                      ),
                    );
                  },
                  child: Text("Area of Circle", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PalindromeNumberScreen(),
                      ),
                    );
                  },
                  child: Text("Palindrome", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ArmstrongNumberScreen(),
                      ),
                    );
                  },
                  child: Text("Armstrong Number", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RichTextScreen(),
                      ),
                    );
                  },
                  child: Text("Rich Text", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FlutterLayoutScreen(),
                      ),
                    );
                  },
                  child: Text("Flutter Layout", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ColumnScreen(),
                      ),
                    );
                  },
                  child: Text("Column and alignment", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RowScreens(),
                      ),
                    );
                  },
                  child: Text("Row and alignment", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Arithmetic2Screen(),
                      ),
                    );
                  },
                  child: Text("Arithmetic2", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContainerScreen(),
                      ),
                    );
                  },
                  child: Text("Container HW", style: TextStyle(fontSize: 25)),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImageViewScreen(),
                      ),
                    );
                  },
                  child: Text("Image View Screen", style: TextStyle(fontSize: 25)),
                ),
              ),
               SizedBox(height: 16),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FlexibleExpandedScreen(),
                      ),
                    );
                  },
                  child: Text("Flexible Screen", style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
