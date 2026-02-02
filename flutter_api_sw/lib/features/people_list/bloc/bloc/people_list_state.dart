part of 'people_list_bloc.dart';

@immutable
sealed class PeopleListState {}

final class PeopleListInitial extends PeopleListState {}
final class PeopleListLoading extends PeopleListState {}
final class PeopleListSuccess extends PeopleListState {
  final List <StarWarsCharacter> peopleList;
  PeopleListSuccess({required this.peopleList});
}

