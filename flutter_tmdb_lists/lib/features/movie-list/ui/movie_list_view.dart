import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb_lists/core/service/movie_list_service.dart';
import 'package:flutter_tmdb_lists/features/movie-list/bloc/movie_list_bloc.dart';

class MovieListView extends StatefulWidget {
  const MovieListView({super.key});

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView> {
  late MovieListBloc movieListBloc;

  @override
  void initState() {
    super.initState();
    movieListBloc = MovieListBloc(MovieListService())..add(MovieListGetAll());
  }

  @override
  void dispose() {
    super.dispose();
    movieListBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('The movie Api')),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<MovieListBloc, MovieListState>(
              bloc:movieListBloc,
              builder: (context, state) {
                  if (state is MovieListLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  
                  }
                  if (state is MovieListSucess) {
                    return Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.movieList.length,
                        itemBuilder: (context, index) => 
                          Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: SizedBox(
                              width: 200,
                              child: ListTile(
                                title: Text(state.movieList[index].title),
                              ),
                            ),
                          ),
                      ),
                    );  
                    
                  }
                  if (state is MovieListError){
                    return Center(
                      child: Text(state.message),
                    );
                  }
                  return const Expanded(child: Text('No hay datos'));
                }
              
            )
          ],
        ),
      ),
    );
  }
}
