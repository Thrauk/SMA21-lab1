part of 'greeting_cubit.dart';

@immutable
class GreetingState extends Equatable {
  const GreetingState({
    this.greetingText = 'Greetings',
    this.name = '',
  });

  final String greetingText;
  final String name;

  GreetingState copyWith({
    String? greetingText,
    String? name,
  }) {
    return GreetingState(
      greetingText: greetingText ?? this.greetingText,
      name: name ?? this.name,
    );
  }

  @override
  List<Object> get props => <Object>[greetingText, name];
}
