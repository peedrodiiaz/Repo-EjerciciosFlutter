import 'package:flutter/material.dart';
import 'package:flutter_tmdb_lists/features/movie-list/ui/movie_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: MovieListView()
    );
  }
}
