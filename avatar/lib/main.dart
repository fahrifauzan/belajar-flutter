import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_page.dart';
import 'sign_up.dart';
import 'navigation_av.dart';

void main() => runApp(MaterialApp(
  title: 'Flutter Fahri',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: new Color(0xff622F74),
    accentColor: Colors.orangeAccent
  ),
  home: SplashScreen(),
  routes: <String, WidgetBuilder>{
    '/LoginPage': (BuildContext context) => new LoginPage(),
    '/SignUp': (BuildContext context) => new SignUp(),
    '/NavAvatar': (BuildContext context) => new NavAvatar(),
  },
));

