import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 00,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Profile ',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ),
      ),
      Positioned(
        bottom: 00,
        left: 00,
        child: Container(
          margin: EdgeInsets.only(right: 4),
          padding: EdgeInsets.all(18),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(80.0)),
          ),
          child: Text('gg'),
        ),
      ),
    ]);
  }
}
