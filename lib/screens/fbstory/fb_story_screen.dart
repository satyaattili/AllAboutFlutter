import 'package:flutter/material.dart';
import 'package:all_about_flutter_app/screens/fbstory/fb_stories.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class FBStoryScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: new Text('hello')),
        body: FBStory(),
      ),
    );
  }

  Future<String> _loadAStudentAsset() async {
    return await rootBundle.loadString('assets/student.json');
  }
/*
  Future loadStudent() async {
    String jsonString = await _loadAStudentAsset();
    final jsonResponse = json.decode(jsonString);
    FBStory story = FBStory.fromJson(jsonResponse);
    print(student.studentScores);
  }*/

}