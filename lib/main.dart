import 'package:flutter/material.dart';
import 'package:lab_flutter/src/lab3/task1/activity.dart';

import 'src/hello_screen.dart';
import 'src/lab3/task2/main_intent_activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainIntentActivity(),
    );
  }
}