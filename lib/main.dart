import 'package:flutter/material.dart';
import 'package:lab_flutter/src/lab3/activity_a.dart';

import 'src/hello_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ActivityA(),
    );
  }
}