import 'package:flutter/material.dart';
import 'splash_screen.dart';
// import 'main_menu.dart';
// import 'sign_up.dart';
// import 'home_page.dart';

void main() => runApp(MaterialApp(
  title: 'Flutter Fahri',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: new Color(0xff622F74),
    accentColor: Colors.orangeAccent
  ),
  home: SplashScreen(),
  routes: <String, WidgetBuilder>{
    // '/MainMenu': (BuildContext context) => new MainMenu(),
    // '/SignUp': (BuildContext context) => new SignUp(),
    // '/HomePage': (BuildContext context) => new HomePage(),
  },
));

