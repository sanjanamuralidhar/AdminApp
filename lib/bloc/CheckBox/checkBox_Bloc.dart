import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'checkBox_event.dart';
part 'checkBox_state.dart';

class CheckBoxBloc extends Bloc<CheckBoxEvent, CheckBoxState> {
  CheckBoxBloc() : super(CheckBoxOffState());
  bool value = false;
  @override
  Stream<CheckBoxState> mapEventToState(CheckBoxEvent event) async* {
    if (event is CheckBoxOffEvent) yield CheckBoxOffState();
    if (event is CheckBoxChangeEvent) {
      value = !value;
      yield CheckBoxChangeState();
    }
  }

  getValue() => value;
}
