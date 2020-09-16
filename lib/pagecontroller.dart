import 'package:flutter/material.dart';
import 'HomePage.dart';
import '2ndpage.dart';

class PageControler extends StatefulWidget {
  @override
  _PageControlerState createState() => _PageControlerState();
}

class _PageControlerState extends State<PageControler> {
  PageController p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: PageView(
        controller: p,
        children: [
          HomePage(),
          SecondPage(),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
          Spacer(),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
    );
  }
}
