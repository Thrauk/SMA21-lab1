import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/buttons.dart';

class ActivityA extends StatefulWidget {
  const ActivityA({Key? key}) : super(key: key);


  @override
  _ActivityAState createState() {
    print('CREATE STATE - ACTIVITY A');
    return _ActivityAState();
  }
}

class _ActivityAState extends State<ActivityA> {
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
