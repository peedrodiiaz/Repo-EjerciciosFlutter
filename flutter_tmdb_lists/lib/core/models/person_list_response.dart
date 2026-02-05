class PersonListResponse {
  final int page;
  final List<Person> results;
  final int totalPages;
  final int totalResults;

  PersonListResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory PersonListResponse.fromJson(Map<String, dynamic> json) {
    return PersonListResponse(
      page: json['page'] ?? 0,
      results: (json['results'] as List?)
              ?.map((item) => Person.fromJson(item))
              .toList() ??
          [],
      totalPages: json['total_pages'] ?? 0,
      totalResults: json['total_results'] ?? 0,
    );
  }
}

class Person {
  final bool adult;
  final int gender; // 1: Female, 2: Male
  final int id;
  final List<KnownFor> knownFor;
  final String knownForDepartment;
  final String name;
  final double popularity;
  final String? profilePath;

  Person({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownFor,
    required this.knownForDepartment,
    required this.name,
    required this.popularity,
    this.profilePath,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      adult: json['adult'] ?? false,
      gender: json['gender'] ?? 0,
      id: json['id'] ?? 0,
      knownFor: (json['known_for'] as List?)
              ?.map((item) => KnownFor.fromJson(item))
              .toList() ??
          [],
      knownForDepartment: json['known_for_department'] ?? '',
      name: json['name'] ?? '',
      // Protección contra enteros en campos double
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      profilePath: json['profile_path'],
    );
  }
}

class KnownFor {
  final bool adult;
  final String? backdropPath;
  final List<int> genreIds;
  final int id;
  final String mediaType; // 'movie' o 'tv'
  final String originalLanguage;
  final String originalTitle; // Para películas y series (mapeado unificado)
  final String overview;
  final String? posterPath;
  final String? releaseDate; // Unificado (release_date o first_air_date)
  final String title; // Unificado (title o name)
  final double voteAverage;
  final int voteCount;

  KnownFor({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    this.posterPath,
    this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  factory KnownFor.fromJson(Map<String, dynamic> json) {
    return KnownFor(
      adult: json['adult'] ?? false,
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids']?.map((x) => x) ?? []),
      id: json['id'] ?? 0,
      mediaType: json['media_type'] ?? 'unknown',
      originalLanguage: json['original_language'] ?? '',
      
      // Lógica para unificar campos de Película vs TV
      originalTitle: json['original_title'] ?? json['original_name'] ?? '',
      overview: json['overview'] ?? '',
      posterPath: json['poster_path'],
      
      // Aquí está el truco: si no hay 'release_date', buscamos 'first_air_date'
      releaseDate: json['release_date'] ?? json['first_air_date'],
      
      // Lo mismo para el título
      title: json['title'] ?? json['name'] ?? 'Untitled',
      
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] ?? 0,
    );
  }
}
