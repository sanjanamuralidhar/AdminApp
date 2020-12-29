import 'dart:async';
import 'package:AdminApp/core/config/config.dart';
import 'package:equatable/equatable.dart';
import 'package:openapi/api.dart';
import 'package:bloc/bloc.dart';
import 'package:openapi/model/term.dart';
import 'package:openapi/model/term_dto.dart';

part 'terms_event.dart';
part 'terms_state.dart';

class TermsBloc extends Bloc<TermsEvent, TermsState> {
  TermsBloc() : super(TermsInitLoadingState());

  final Openapi openapi = Openapi();

  List<Term> termsStatus;
  List<Term> termTypes;

  @override
  Stream<TermsState> mapEventToState(
    TermsEvent event,
  ) async* {
    if (event is GetTermsdataEvent) {
      yield TermsInitLoadingState();
      try {
        await openapi
            .getQueryResourceApi()
            .findalltermsUsingGET(headers: Config.TOKEN, page: 0)
            .then((value) => this.termsStatus = value.data.content.toList());
        print('done');
        print(Config.TOKEN);
        yield TermsInitLoadedState();
      } on Exception catch (e) {
        print('something happened ' + e.toString());
      }
    }
  }
}
