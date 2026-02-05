part of 'movie_list_bloc.dart';

@immutable
sealed class MovieListState {}

final class MovieListInitial extends MovieListState {}

final class MovieListLoading extends MovieListState{}

final class MovieListSucess extends MovieListState{
  final List<Movie> movieList;

  MovieListSucess ({required this.movieList});
} 

final class MovieListError extends MovieListState {
  final String message;

  MovieListError ({required this.message});
}
