import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb_lists/core/interface/person_list_interfaces.dart';
import 'package:flutter_tmdb_lists/core/service/person_list_service.dart';
import 'package:flutter_tmdb_lists/features/people-list/bloc/people_list_bloc.dart';

class PeopleListView extends StatefulWidget {
  const PeopleListView({super.key});

  @override
  State<PeopleListView> createState() => _PeopleListViewState();
}

class _PeopleListViewState extends State<PeopleListView> {
  late PeopleListBloc peopleListBloc;

  @override
  void initState() {
    super.initState();
    peopleListBloc = PeopleListBloc(PersonListService())
      ..add(PeopleFetchAllGetAll());
  }

  @override
  void dispose() {
    super.dispose();
    peopleListBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('People List')),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<PeopleListBloc, PeopleListState>(
              bloc: peopleListBloc,
              builder: (context, state) {
                if (state is PeopleListLoading) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state is PeopleListSuccess) {
                  return Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.peopleList.length,
                      itemBuilder: (context, index) => 
                      Padding(
                        padding: const EdgeInsetsGeometry.only(top: 100),
                        child: SizedBox(
                          width: 200,
                          child: ListTile(
                            title: Text(state.peopleList[index].name),
                          ),
                        ),
                      ),
                    ),
                    
                  );
                }
                  return const Expanded(child: Text('No hay datos'));

              },
              
            ),
          ],
        ),
      ),
    );
  }
}
