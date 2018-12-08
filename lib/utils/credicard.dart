import 'package:flutter/material.dart';

class CreditCard {
  PageController _pageController;
  Widget creditCardPageView() {
    return new Container(
      height: 270.0,
      child: new PageView(
        controller: _pageController,
        children: <Widget>[
          new Image.asset('images/2card.png'),
          new Image.asset('images/1card.jpg'),
          new Image.asset('images/3card.jpg'),
        ],
      ),
    );
  }
}
