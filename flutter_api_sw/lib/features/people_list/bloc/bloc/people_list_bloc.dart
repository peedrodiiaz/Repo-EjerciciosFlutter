import 'package:bloc/bloc.dart';
import 'package:flutter_api_sw/core/models/people_list_response.dart';
import 'package:flutter_api_sw/core/services/people_service.dart';
import 'package:meta/meta.dart';

part 'people_list_event.dart';
part 'people_list_state.dart';

class PeopleListBloc extends Bloc<PeopleListEvent, PeopleListState> {
  PeopleListBloc(PeopleService peopleService) : super(PeopleListInitial()) {
    on<PeopleListEvent>((event, emit)async {
        emit(PeopleListLoading());
        try {
          var listaPeople = await peopleService.getAllPeople();
          emit(PeopleListSuccess(peopleList: listaPeople));

        } catch (e) {
          rethrow;
        }
    });
  }
}
