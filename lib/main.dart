import 'package:announcement_of_theatre/screens/home_page.dart';
import 'package:announcement_of_theatre/screens/movie_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
    
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo Djakh",
      theme: ThemeData(
          primarySwatch: Colors.indigo, 
          scaffoldBackgroundColor: Colors.grey[800],
          textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: Colors.white, 
      displayColor: Colors.blue, 
    ),
          ),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (ctx) => HomePage(),
        MovieDetailsScreen.routeName: (ctx) => MovieDetailsScreen(),
      },
    );
  }
}
