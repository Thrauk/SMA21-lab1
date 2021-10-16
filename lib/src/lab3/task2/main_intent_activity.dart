import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/buttons.dart';

class MainIntentActivity extends StatefulWidget {
  const MainIntentActivity({Key? key}) : super(key: key);


  @override
  _MainIntentState createState() {
    print('CREATE STATE - ACTIVITY A');
    return _MainIntentState();
  }
}

class _MainIntentState extends State<MainIntentActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MSA - ACTIVITY A'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
