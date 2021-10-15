import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'greeting_state.dart';

class GreetingCubit extends Cubit<GreetingState> {
  GreetingCubit() : super(const GreetingState());

  void nameChanged(String value) {

    emit(state.copyWith(
      name: value,
    ));
  }

  void helloButtonPressed() {
    emit(state.copyWith(
      greetingText: state.name == '' ? 'Greetings' : 'Hello, ${state.name}'
    ));
  }

}
