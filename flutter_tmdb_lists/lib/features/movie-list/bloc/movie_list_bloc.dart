import 'package:bloc/bloc.dart';
import 'package:flutter_tmdb_lists/core/models/movie_list_response.dart';
import 'package:flutter_tmdb_lists/core/service/movie_list_service.dart';
import 'package:meta/meta.dart';

part 'movie_list_event.dart';
part 'movie_list_state.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  MovieListBloc(MovieListService  movieListService) : super(MovieListInitial()) {
    on<MovieListGetAll>((event, emit)async {
      emit (MovieListLoading());

      try {
        var apiMovieList = await movieListService.getList();
        emit(MovieListSucess(movieList: apiMovieList));
      } catch (e) {
        emit(MovieListError(message: e.toString()));
      }
    });
  }
}
