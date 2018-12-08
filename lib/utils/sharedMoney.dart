import 'package:flutter/material.dart';

class SharedMoney {
  Widget shareMoney() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text('Send money to'),
        new SizedBox(height: 15.0),
        new SizedBox(
          height: 100.0,
          width: double.infinity,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                height: 100.0,
                width: 100.0,
                child: new Card(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  elevation: 8.0,
                  color: Color.fromRGBO(66, 40, 145, 0.75),
                  child: new IconButton(
                    onPressed: () {},
                    icon: new Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(66, 40, 145, 1.0),
                            Color.fromRGBO(214, 14, 97, 1.0),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.red,
                      ),
                      child: new Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
