import 'package:flutter/material.dart';
import 'package:flutter_aparcamiento_bicicletaas/core/service/bicicleta_service.dart';
import 'package:flutter_aparcamiento_bicicletaas/feature/pokemon_list/bloc/bicicleta_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BiclietaListView extends StatefulWidget {
  const BiclietaListView({super.key});

  @override
  State<BiclietaListView> createState() => _BiclietaListViewState();
}

class _BiclietaListViewState extends State<BiclietaListView> {
  late BicicletaListBloc biclietaListBloc;

  @override
  void initState() {
    super.initState();
    biclietaListBloc = BicicletaListBloc(BicicletaService());
    biclietaListBloc.add(BicletaListFetchAllEvent());
  }

  @override
  void dispose() {
    biclietaListBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValenciBici'),),
      body: BlocBuilder<BicicletaListBloc, BicicletaListState>(
        bloc:biclietaListBloc,
        builder: (context, state) {
          if (state is BicicletaListLoading){
            return const Center(child: CircularProgressIndicator(),);
          }else if (state is BicicletaListSucess){

            return ListView.builder(
              itemCount: state.bicicletaList.length,
              itemBuilder: (context, index) => ListTile(title: Text(state.bicicletaList[index].address),
              ),
            );
          } else if (state is BicicletaListError){

            return Center(child: Text(state.menssage),);
          }
          return const Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}