import 'package:flutter/material.dart';
import 'package:peliculas/providers/movieProvider.dart';
import 'package:peliculas/screens/details_sreen.dart';
import 'package:peliculas/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => MovieProvider(), lazy: false)
    ],
    child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          
        )
      ),

      initialRoute: '/home',
      routes: {
        '/home': (_) => Home(),
        '/details': (_) => DetailsScreen(),
      },
    );
  }
}