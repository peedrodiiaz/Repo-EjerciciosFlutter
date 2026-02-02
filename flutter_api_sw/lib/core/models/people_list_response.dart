class StarWarsResponse {
  final int count;
  final String? next; // Puede ser null si estás en la última página
  final String? previous; // Puede ser null si estás en la primera página
  final List<StarWarsCharacter> results;

  StarWarsResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory StarWarsResponse.fromJson(Map<String, dynamic> json) {
    return StarWarsResponse(
      count: json['count'] as int,
      // Usamos as String? para permitir nulos explícitamente
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      // Mapeamos la lista 'results' usando el factory de la otra clase
      results: (json['results'] as List<dynamic>)
          .map((e) => StarWarsCharacter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((e) => e.toJson()).toList(),
    };
  }
}

class StarWarsCharacter {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> species;
  final List<String> vehicles;
  final List<String> starships;
  final DateTime created;
  final DateTime edited;
  final String url;

  StarWarsCharacter({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory StarWarsCharacter.fromJson(Map<String, dynamic> json) {
    return StarWarsCharacter(
      name: json['name'] as String,
      height: json['height'] as String,
      mass: json['mass'] as String,
      hairColor: json['hair_color'] as String,
      skinColor: json['skin_color'] as String,
      eyeColor: json['eye_color'] as String,
      birthYear: json['birth_year'] as String,
      gender: json['gender'] as String,
      homeworld: json['homeworld'] as String,
      films: List<String>.from(json['films'] as List),
      species: List<String>.from(json['species'] as List),
      vehicles: List<String>.from(json['vehicles'] as List),
      starships: List<String>.from(json['starships'] as List),
      created: DateTime.parse(json['created'] as String),
      edited: DateTime.parse(json['edited'] as String),
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'height': height,
      'mass': mass,
      'hair_color': hairColor,
      'skin_color': skinColor,
      'eye_color': eyeColor,
      'birth_year': birthYear,
      'gender': gender,
      'homeworld': homeworld,
      'films': films,
      'species': species,
      'vehicles': vehicles,
      'starships': starships,
      'created': created.toIso8601String(),
      'edited': edited.toIso8601String(),
      'url': url,
    };
  }
}
