import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab_flutter/src/screens/greeting/cubit/greeting_cubit.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GreetingCubit>(
      create: (_) => GreetingCubit(),
      child: _GreetingPage(),
    );
  }
}

class _GreetingPage extends StatelessWidget {
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
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Your name',
                      ),
                      textAlign: TextAlign.center,
                      onChanged: (String text) {
                        context.read<GreetingCubit>().nameChanged(text);
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
                        context.read<GreetingCubit>().helloButtonPressed();
                      },
                      child: const Text('SAY HELLO'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<GreetingCubit, GreetingState>(
              buildWhen: (GreetingState previous, GreetingState current) =>
                  previous.greetingText != current.greetingText,
              builder: (BuildContext context, GreetingState state) {
                return Text(
                  state.greetingText,
                  style: TextStyle(
                    fontSize: 20,
                    color: state.greetingText == 'Greetings' ? Colors.grey : Colors.blueAccent,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
