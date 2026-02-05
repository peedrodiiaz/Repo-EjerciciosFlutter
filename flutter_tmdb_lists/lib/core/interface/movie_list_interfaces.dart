import 'package:flutter_tmdb_lists/core/models/movie_list_response.dart';

abstract class MovieListInterfaces {
  Future <List<Movie>>getList();
}