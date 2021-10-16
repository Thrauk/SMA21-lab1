import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_flutter/src/lab3/widgets/buttons.dart';

class ActivityC extends StatefulWidget {
  const ActivityC({Key? key}) : super(key: key);

  @override
  _ActivityCState createState() {
    print('CREATE STATE - ACTIVITY C');
    return _ActivityCState();
  }

}

class _ActivityCState extends State<ActivityC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MSA - ACTIVITY C'),
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
