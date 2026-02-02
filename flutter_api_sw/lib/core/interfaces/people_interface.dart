import 'package:flutter_api_sw/core/models/people_list_response.dart';

abstract class PeopleInterface {
  Future <List<StarWarsCharacter>>getAllPeople();
}