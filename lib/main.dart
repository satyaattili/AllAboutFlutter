import 'package:flutter/material.dart';
import 'package:all_about_flutter_app/screens/home_screen.dart';
import 'package:flutter/services.dart';
import 'package:all_about_flutter_app/screens/scroll_views.dart';
import 'package:all_about_flutter_app/screens/fbstory/fb_story_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => HomeScreen(),
    "/horizontal-list": (BuildContext context) => HorizontalList(),
    "/fbstory": (BuildContext context) => FBStoryScreen(),
  };


  @override
  Widget build(BuildContext context) {
    //fix orientation to potrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.orange[800],
        accentColor: Colors.cyan[600],
      ),
      home: HomeScreen(),
      routes: routes,
    );
  }
}