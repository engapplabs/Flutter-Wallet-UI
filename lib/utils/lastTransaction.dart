import 'package:flutter/material.dart';

class LastTransaction {
  Widget lastTransactions() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text('Last transactions'),
        new Expanded(
          child: new ListView.separated(
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return new Divider();
            },
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                elevation: 8.0,
                child: new Opacity(
                  opacity: 1.0,
                  child: new Container(
                    color: Color.fromRGBO(66, 40, 145, 1.0),
                    height: 100.0,
                    child: new ListTile(
                      leading: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: new Image.asset('images/bball.png'),
                        ),
                      ),
                      title: new Text(
                        'Dribbble',
                        style: new TextStyle(color: Colors.white),
                      ),
                      subtitle: new Text(
                        'Subscriptions',
                        style: new TextStyle(color: Colors.grey),
                      ),
                      trailing: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text('-\$30.00'),
                          new Text(
                            '27 May 2018',
                            style: new TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
