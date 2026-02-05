import 'dart:convert';

import 'package:flutter_tmdb_lists/Security/dio_client.dart';
import 'package:flutter_tmdb_lists/core/interface/movie_list_interfaces.dart';
import 'package:flutter_tmdb_lists/core/models/movie_list_response.dart';
import 'package:http/http.dart' as http;

class MovieListService  implements MovieListInterfaces{
  @override
  Future<List<Movie>> getList() async {
    final DioClient _dioClient = DioClient();
    try {
      var response = await _dioClient.dio.get('/movie/popular');
      
      if (response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        var movieList = MovieListResponse.fromJson(response.data).results;
        return movieList;
      } else {
        throw Exception("Error: Status ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error al obtener las películas: $e");
    }
  }
}