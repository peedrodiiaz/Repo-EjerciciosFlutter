import 'package:bloc/bloc.dart';
import 'package:flutter_aparcamiento_bicicletaas/core/models/bicicleta_list_response.dart';
import 'package:flutter_aparcamiento_bicicletaas/core/service/bicicleta_service.dart';
import 'package:meta/meta.dart';

part 'bicicleta_list_event.dart';
part 'bicicleta_list_state.dart';

class BicicletaListBloc extends Bloc<BicicletaListEvent, BicicletaListState> {
  BicicletaListBloc(BicicletaService bicicletaService) : super(BicicletaListInitial()) {
    on<BicletaListFetchAllEvent>((event, emit)async {
      emit (BicicletaListLoading());

      try {
        var bicicletaList = await bicicletaService.getAllBicicletas();

        emit(BicicletaListSucess(bicicletaList: bicicletaList));
      } catch (e) {
        emit (BicicletaListError(menssage: 'No se han encotrado estaciones'));
      }
    });
  }
}
