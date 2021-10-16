import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greetingText = 'Greetings';
  String formText = '';
  List<String> colorChoices = ['White', 'Red', 'Black', 'Orange'];
  List<Color> colorList = [Colors.white, Colors.red, Colors.black, Colors.orange];
  String activeChoice = 'White';
  Color buttonColor = Colors.white;

  void _launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greeting'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Your name',
                      ),
                      textAlign: TextAlign.center,
                      onChanged: (String text) {
                        formText = text;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (formText != '') {
                            greetingText = 'Hello, $formText';
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  PopupWindowWidget(
                                greetingText: greetingText,
                              ),
                            );
                          } else {
                            greetingText = 'Greetings';
                          }
                        });
                      },
                      child: Text(
                        'SAY HELLO',
                        style: TextStyle(color: buttonColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              greetingText,
              style: TextStyle(
                fontSize: 20,
                color: greetingText == 'Greetings'
                    ? Colors.grey
                    : Colors.blueAccent,
              ),
            ),
            Row(
              children: [
                const Expanded(child: Text('Choose button color:')),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: activeChoice,
                    onChanged: (String? newValue) {
                      if(newValue != null)
                      {
                        int index = colorChoices.indexOf(newValue);
                        setState(() {
                          activeChoice = newValue;
                          buttonColor = colorList[index];
                        });
                      }

                    },
                    items: colorChoices
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                if(formText != '') {
                  setState(() {
                    Share.share(formText);
                  });
                }
              },
              child: Text(
                'Share',
                style: TextStyle(color: buttonColor),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if(formText != '') {
                  String formattedName = formText.replaceAll(' ', '+');
                  String url = 'https://www.google.com/search?q=$formattedName';
                  setState(() {
                    _launchURL(url);
                  });
                }
              },
              child: Text(
                'Search',
                style: TextStyle(color: buttonColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopupWindowWidget extends StatelessWidget {
  const PopupWindowWidget({Key? key, required this.greetingText})
      : super(key: key);

  final String greetingText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Greeting'),
      content: Text(greetingText),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'NEGATIVE');
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(const SnackBar(
                content: Text("NEGATIVE"),
              ));
          },
          child: const Text('NEGATIVE'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'POSITIVE');
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(const SnackBar(
                content: Text("POSITIVE"),
              ));
          },
          child: const Text('POSITIVE'),
        ),
      ],
    );
  }
}
