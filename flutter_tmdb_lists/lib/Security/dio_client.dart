import 'package:dio/dio.dart';

class DioClient {
  // Token TMDB v4 (guardar en .env o variables de entorno, no aquí)
  static const String _apiToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YjBjYmY0MDlkMGM0Mjk1YzU5NjMyZDNjYjVlMzRiZCIsIm5iZiI6MTc2MzQ2NTk5OS41NTIsInN1YiI6IjY5MWM1YjBmODUwNTNiZmQxOTVlMDRkMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.lGJ6hvIFhgDjjRTMo9022xIOpGRZXr3BRpz7Zrnkt0s";
  final Dio _dio = Dio();

  DioClient() {
    _dio.options.baseUrl = 'https://api.themoviedb.org/3';

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // TMDB v4 usa Bearer token en el header Authorization
        options.headers['Authorization'] = 'Bearer $_apiToken';
        options.headers['Content-Type'] = 'application/json;charset=utf-8';
        
        return handler.next(options);
      },
      onError: (error, handler) {
        // Manejar errores específicos de TMDB
        if (error.response?.statusCode == 401) {
          print('Token inválido o expirado');
        }
        return handler.next(error);
      },
    ));
  }

  Dio get dio => _dio;
}