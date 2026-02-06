import 'dart:convert';

import 'package:flutter_tmdb_lists/core/interface/person_list_interfaces.dart';
import 'package:flutter_tmdb_lists/core/models/person_list_response.dart';
import 'package:http/http.dart' as http;

class PersonListService implements PeopleListInterfaces{
  @override
  Future<List<Person>> getList()async {
    try {
      var response = await http.get(Uri.parse('https://api.themoviedb.org/3/person/popular'),
      headers: {
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YjBjYmY0MDlkMGM0Mjk1YzU5NjMyZDNjYjVlMzRiZCIsIm5iZiI6MTc2MzQ2NTk5OS41NTIsInN1YiI6IjY5MWM1YjBmODUwNTNiZmQxOTVlMDRkMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.lGJ6hvIFhgDjjRTMo9022xIOpGRZXr3BRpz7Zrnkt0s"
      }
      );
      if (response.statusCode>200  && response.statusCode<300) {
        var movieList =   PersonListResponse.fromJson(jsonDecode(response.body)).results;
        return movieList;
      }else{
        throw Exception("Error al obterner a los actores");
      }
      
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}