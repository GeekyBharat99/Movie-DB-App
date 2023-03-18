import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/movie_details.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case MovieDetailsPage.route:
        return MaterialPageRoute(
          builder: (_) => MovieDetailsPage(movie: args as Movie),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Not Found'),
          ),
          body: const Center(
            child: Text('Not Found'),
          ),
        );
      },
    );
  }
}
