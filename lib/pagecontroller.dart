//import 'package:conatus/widget.dart';
import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/2ndpage.dart';
import 'pages/search.dart';

class PageControler extends StatefulWidget {
  @override
  _PageControlerState createState() => _PageControlerState();
}

class _PageControlerState extends State<PageControler> {
  final Color o = Color.fromRGBO(255, 181, 101, 1);
  final Color b = Color.fromRGBO(31, 16, 22, 1);
  PageController p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: o,
      body: PageView(
        controller: p,
        children: [
          HomePage(),
          SecondPage(),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: b),
        backgroundColor: o,
        actions: [
          // IconButton(
          //     icon: Icon(
          //       Icons.ex,
          //       color: b,
          //     ),
          //     onPressed: () {}),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.search,
              color: b,
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
