import 'dart:convert';

import 'package:flutter_api_sw/core/interfaces/people_interface.dart';
import 'package:flutter_api_sw/core/models/people_list_response.dart';
import 'package:http/http.dart' as http;


class PeopleService implements PeopleInterface {
  final String _apiBaseUrl = "https://swapi.dev/api/people";

  @override
  Future<List<StarWarsCharacter>> getAllPeople() async{
      var url= Uri.parse(_apiBaseUrl);

    try{
        var response = await http.get(url);

        if(response.statusCode == 200){
          var peopleListResponse = StarWarsResponse.fromJson(jsonDecode(response.body)); 
          return peopleListResponse.results;
        }
        
    } catch (e){
      rethrow;
    }
    
    return [];
  }
}