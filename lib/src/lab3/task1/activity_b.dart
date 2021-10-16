import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/buttons.dart';

class ActivityB extends StatefulWidget {
  const ActivityB({Key? key}) : super(key: key);

  @override
  _ActivityBState createState() {
    print('CREATE STATE - ACTIVITY B');
    return _ActivityBState();
  }
}

class _ActivityBState extends State<ActivityB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MSA - ACTIVITY B'),
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
