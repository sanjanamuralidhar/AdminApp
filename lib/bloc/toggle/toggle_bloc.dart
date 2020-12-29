import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'toggle_state.dart';

part 'toggle_event.dart';

class ToggleBloc extends Bloc<ToggleEvent, ToggleState> {
  ToggleBloc() : super(ToggleOffState([true, false]));
  bool switchValue = false;

  @override
  Stream<ToggleState> mapEventToState(
    ToggleEvent event,
  ) async* {
    // ignore: todo
    // TODO: implement mapEventToState
    if (event is ToggleChangeEvent) {
      switchValue = !switchValue;
      yield ToggleChangeState([!(state.toggles[0]), !(state.toggles[1])]);
    }
  }

  getValue() => switchValue;
}
