part of 'currensy_bloc.dart';

@immutable
sealed class CurrensyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class OnGenerate extends CurrensyEvent {
  final String from;
  final String to;

  OnGenerate({required this.from, required this.to});

  @override
  List<Object?> get props => [from, to];
}
