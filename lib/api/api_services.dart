import 'package:movie_app/models/cast_data.dart';
import 'package:movie_app/models/movie_data.dart';
import 'package:movie_app/models/movie_details.dart';
import 'package:movie_app/models/video_data.dart';

import 'api_client.dart';

class ApiService {
  static final ApiService _singleton = ApiService._internal();

  factory ApiService() {
    return _singleton;
  }

  late ApiClient apiClient;

  ApiService._internal() {
    apiClient = ApiClient();
  }

  static const String apiKey = "7647a0a758efcd293d48b84cbe31295a";

  Future<MovieData?> getMovies({
    required String movieCategory,
  }) {
    return apiClient.get(
      '/movie/${movieCategory.toString()}?api_key=$apiKey',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return MovieData.fromJson(data);
      },
      headers: {},
    );
  }

  Future<MovieDetails?> getMovieDetails({
    required int movieId,
  }) {
    return apiClient.get(
      '/movie/$movieId?api_key=$apiKey',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return MovieDetails.fromJson(data);
      },
      headers: {},
    );
  }

  Future<VideoData?> getMovieTrailer({
    required int movieId,
  }) {
    return apiClient.get(
      '/movie/$movieId/videos?api_key=$apiKey',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return VideoData.fromJson(data);
      },
      headers: {},
    );
  }

  Future<CastData?> getMovieCast({
    required int movieId,
  }) {
    return apiClient.get(
      '/movie/$movieId/credits?api_key=$apiKey',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return CastData.fromJson(data);
      },
      headers: {},
    );
  }

  Future<MovieData?> getMovieRecommendations({
    required int movieId,
  }) {
    return apiClient.get(
      '/movie/$movieId/recommendations?api_key=$apiKey',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return MovieData.fromJson(data);
      },
      headers: {},
    );
  }
}
