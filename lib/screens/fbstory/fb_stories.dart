import 'package:flutter/material.dart';

class FBStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return new Container(
            height: 190.0,
            width: 150.0,
            child: fbStoryItem(index),
          );
        },
        itemCount: 5,
      ),
    );
  }

  Stack fbStoryItem(int index) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: 150.0,
          height: 200.0,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              /*boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: new Offset(2.0, 2.0),
                )
              ],*/
              borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
              border: new Border.all(
                color: Colors.transparent,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              image: DecorationImage(
                  image: NetworkImage(
                      "http://mobileappdev.in/projects/images/skygreen.jpg"),
                  fit: BoxFit.fill)),
        ),
        Align(
          child: Container(
            width: 40.0,
            height: 40.0,
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
                border: new Border.all(
                  color: Colors.blue,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                image: DecorationImage(
                    image: NetworkImage(
                        "http://mobileappdev.in/projects/images/sundar.jpg"),
                    fit: BoxFit.fill)),
          ),
          alignment: AlignmentDirectional.topStart,
        ),
        Align(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "FB Username",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          alignment: AlignmentDirectional.bottomStart,
        ),
      ],
    );
  }
}
