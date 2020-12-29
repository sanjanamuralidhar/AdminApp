part of 'toggle_bloc.dart';

abstract class ToggleState extends Equatable {
  ToggleState();
  final toggles = [false, false];

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class ToggleChangeState extends ToggleState {
  var toggles = [true, false];
  ToggleChangeState(this.toggles);
}

// ignore: must_be_immutable
class ToggleOffState extends ToggleState {
  var toggles = [true, false];
  ToggleOffState(this.toggles);
}