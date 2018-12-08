import 'package:flutter/material.dart';

class TopBar {
  Widget appBar() {
    return new Container(
        margin: new EdgeInsets.only(top: 25.0),
        width: double.infinity,
        height: 56.0,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(left: 20.0),
              child: new BackButton(
                color: Colors.white,
              ),
            ),
            new Text(
              'Your Account',
              style: new TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            new Padding(
              padding: new EdgeInsets.only(right: 20.0),
              child: new CircleAvatar(
                backgroundImage: new AssetImage('images/profilepic.jpg'),
              ),
            ),
          ],
        ));
  }
}
