import 'package:bloc/bloc.dart';
import 'package:flutter_tmdb_lists/core/models/person_list_response.dart';
import 'package:flutter_tmdb_lists/core/service/person_list_service.dart';
import 'package:meta/meta.dart';

part 'people_list_event.dart';
part 'people_list_state.dart';

class PeopleListBloc extends Bloc<PeopleListEvent, PeopleListState> {
  PeopleListBloc(PersonListService personService) : super(PeopleListInitial()) {
    // ignore: void_checks
    on<PeopleListEvent>((event, emit)async {
      emit (PeopleListLoading());
      try {
        var response = await personService.getList();
        emit(PeopleListSuccess(response));

      } catch (e) {
        emit (PeopleListError(message: e.toString()));
      }

    });
  }
}
