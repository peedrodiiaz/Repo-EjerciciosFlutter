part of 'people_list_bloc.dart';

@immutable
sealed class PeopleListEvent {}

final class PeopleFetchAllGetAll extends PeopleListEvent{}

