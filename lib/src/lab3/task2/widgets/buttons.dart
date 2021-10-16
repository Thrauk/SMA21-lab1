import 'dart:io' show Platform;
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _ButtonA(),
        _ButtonB(),
        _ButtonC(),
        _ButtonD(),
      ],
    );
  }

}

class _ButtonA extends StatelessWidget {
  const _ButtonA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () async {
        if (Platform.isAndroid) {
          AndroidIntent intent = AndroidIntent(
            action: 'action_view',
            data: 'http://www.google.com',
          );
          await intent.launch();
        }
      },
      child: Text(
        'BUTTON 1',
      ),
    );
  }

}

class _ButtonB extends StatelessWidget {
  const _ButtonB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () async {
        if (Platform.isAndroid) {
          AndroidIntent intent = AndroidIntent(
            action: 'action_view',
            data: 'tel:00401213456',
          );
          await intent.launch();
        }
      },
      child: Text(
        'BUTTON 2',

      ),
    );
  }

}

class _ButtonC extends StatelessWidget {
  const _ButtonC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  ElevatedButton(
      onPressed: () async {
        if (Platform.isAndroid) {
          AndroidIntent intent = AndroidIntent(
            action: 'action_view',
            data: 'https://www.google.com',
          );
          await intent.launch();
        }
      },
      child: Text(
        'BUTTON 3',
      ),
    );
  }

}

class _ButtonD extends StatelessWidget {
  const _ButtonD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () async {
        if (Platform.isAndroid) {
          AndroidIntent intent = AndroidIntent(
            action: 'action_view',
            data: 'tel:00401213456',
          );
          await intent.launch();
        }
      },
      child: Text(
        'BUTTON 4',
      ),
    );
  }

}