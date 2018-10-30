import 'package:flutter/material.dart';

class ScrollViewHolder extends StatelessWidget {

  const ScrollViewHolder(
      { Key key, this.cardTitle, this.actionText, this.backgroundColor,this.child, this.actionClickCallBAck}) : super(key: key);

  final String cardTitle;
  final String actionText;
  final Widget child;
  final Color backgroundColor;
  final VoidCallback actionClickCallBAck;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.0,
        color: backgroundColor == null ? Colors.white54 : backgroundColor,
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
        child: Column(children: <Widget>[
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              new Text(
                cardTitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18.0),
                textAlign: TextAlign.left,
              ),
              new FlatButton(
                  onPressed: actionClickCallBAck,
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    actionText,
                  ))
                ]
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(10.0),
            child: child
          ),
        ]));
  }
}