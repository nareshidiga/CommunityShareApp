import 'package:flutter/material.dart';

import 'bloc/theme_bloc.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Community Share',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        //fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          bodyText1: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
        ),
      ),
      home: LoginScreen(themeBloc: ThemeBloc()),
    );
  }
}
