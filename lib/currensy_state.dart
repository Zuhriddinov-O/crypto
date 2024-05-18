part of 'currensy_bloc.dart';

@immutable
sealed class CurrensyState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class CurrensyInitial extends CurrensyState {}

final class CurrencySuccess extends CurrensyState {
  final double? value;

  CurrencySuccess(this.value);

  @override
  List<Object?> get props => [value];
}
