import 'package:riveradrawer2/movies.dart';
import 'package:riveradrawer2/profile.dart';
import 'package:flutter/material.dart';
import 'package:riveradrawer2/around.dart';
import 'package:riveradrawer2/between.dart';
import 'package:riveradrawer2/stretch.dart';
import 'contact.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String home = Home.routeName;
  static const String profile = Profile.routeName;
  static const String movies = Movies.routeName;
  static const String around = Around.routeName;
  static const String between = Between.routeName;
  static const String stretch = Stretch.routeName;
  static const String contacts = Contact.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        home: (context) => Home(),
        profile: (context) => Profile(),
        movies: (context) => Movies(),
        around: (context) => Around(),
        between: (context) => Between(),
        stretch: (context) => Stretch(),
        contacts: (context) => Contact(),
      },
      home: Home(),
    );
  }
}
