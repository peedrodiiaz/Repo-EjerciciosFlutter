part of 'bicicleta_list_bloc.dart';

@immutable
sealed class BicicletaListState {}

final class BicicletaListInitial extends BicicletaListState {}

final class BicicletaListLoading extends BicicletaListState{}

final class BicicletaListSucess extends BicicletaListState{
  final List <ValenbisiStation>bicicletaList;
  BicicletaListSucess ({required this.bicicletaList});
}
final class BicicletaListError extends BicicletaListState {
  final String menssage;
  BicicletaListError ({required this.menssage});
}
