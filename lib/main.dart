import 'package:flutter/material.dart';
import 'utils/appbar.dart';
import 'utils/credicard.dart';
import 'utils/sharedMoney.dart';
import 'utils/lastTransaction.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        textTheme: TextTheme(
          body1: new TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: new HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget
    with TopBar, CreditCard, SharedMoney, LastTransaction {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(11, 9, 47, 1.0),
              Color.fromRGBO(66, 40, 145, 1.0)
            ],
          ),
        ),
        child: new Column(
          children: <Widget>[
            appBar(),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: creditCardPageView(),
            ),
            new SizedBox(height: 15.0),
            new Expanded(
              child: Padding(
                padding: new EdgeInsets.symmetric(horizontal: 20.0),
                child: shareMoney(),
              ),
            ),
            new Expanded(
              child: Padding(
                padding: new EdgeInsets.symmetric(horizontal: 20.0),
                child: lastTransactions(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
