

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../activity.dart';


class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ButtonA(),
        _ButtonB(),
        _ButtonC(),
      ],
    );
  }

}

class _ButtonA extends StatelessWidget {
  const _ButtonA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityA()));
      },
      child: Text(
        'START A',
      ),
    );
  }

}

class _ButtonB extends StatelessWidget {
  const _ButtonB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityB()));
      },
      child: Text(
        'START B',

      ),
    );
  }

}

class _ButtonC extends StatelessWidget {
  const _ButtonC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityC()));
      },
      child: Text(
        'START C',
      ),
    );
  }

}