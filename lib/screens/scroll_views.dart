import 'package:all_about_flutter_app/data/data_constants.dart';
import 'package:flutter/material.dart';
import 'package:all_about_flutter_app/widgets/list_view_holder.dart';

class HorizontalList extends StatelessWidget {
  static String tag = "tag-horizontal-list";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: new Text("Horiontal ListView Widgets"),
            ),
            body: Column(
              children: <Widget>[
                headerTextWithPadding("Only List View", 10.0),
                listView,
                headerTextWithPadding("List view as child to custom Widget 1", 10.0),
                ScrollViewHolder(
                  cardTitle: "Section 1",
                  actionText: "Click Here",
                  actionClickCallBAck: onClick(),
                  child: listView,
                ),
                headerTextWithPadding("List view as child to custom Widget 2", 10.0),
                ScrollViewHolder(
                  cardTitle: "Section 2",
                  actionText: "View All",
                  backgroundColor: Colors.blueAccent,
                  actionClickCallBAck: onClick(),
                  child: listView,
                )
              ],
            )
        ));
  }

  var listView = Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      height: 120.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(8.0),
          itemCount: imageUrls.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return tileView(imageUrls[index]);
          }
      )
  );


  static Container tileView(String imageUrl) {
    return Container(
        width: 100.0,
        height: 100.0,
        margin: EdgeInsets.all(5.0),
        decoration: new BoxDecoration(
            color: Colors.black,
            borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            image: new DecorationImage(
                fit: BoxFit.cover, image: new NetworkImage(imageUrl))
        )
    );
  }

  static Padding headerTextWithPadding(String text, double padding) {
    return new Padding(padding: EdgeInsets.all(padding),
        child: new Text(text, style: new TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),));
  }

  onClick() {
    print("Action Clicked");
  }
}
