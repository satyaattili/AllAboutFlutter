import 'package:all_about_flutter_app/data/data_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: new Text("Flutter UI Widgets"),
            ),
            body: new ListView.builder(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.vertical,
                itemCount: homeList.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new ListTile(
                    title: homeListTileView(context, homeList[index], index),
                  );
                })));
  }

  Widget homeListTileView(
      BuildContext context, String listItemText, int index) {
    return new InkWell(
        onTap: () {
          Navigator.of(context).pushNamed("/horizontal-list");
        },
        child: new ListTile(
          title: new Text(listItemText,
              style: new TextStyle(fontWeight: FontWeight.bold)),
        ));
  }
}
