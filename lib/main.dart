import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/route_generator.dart';
import 'package:movie_app/screens/home.dart';
import 'package:movie_app/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie DB App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'DMSans',
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.blue,
        ),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const HomePage(),
    );
  }
}
