part of 'checkBox_Bloc.dart';

@immutable
abstract class CheckBoxEvent {}

class CheckBoxChangeEvent extends CheckBoxEvent {}

class CheckBoxOffEvent extends CheckBoxEvent {}

