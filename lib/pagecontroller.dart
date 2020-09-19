import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/2ndpage.dart';
import 'pages/search.dart';
import 'animatedContainer.dart';

class PageControler extends StatefulWidget {
  @override
  _PageControlerState createState() => _PageControlerState();
}

class _PageControlerState extends State<PageControler> {
  PageController p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).accentColor,
      body: PageView(
        controller: p,
        children: [
          HomePage(),
          SecondPage(),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: Theme.of(context).accentColor,
        actions: [
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
          ),
        ],
        elevation: 0,
      ),
    );
  }
}
