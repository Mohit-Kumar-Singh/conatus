import 'package:flutter/material.dart';
import '../pagecontroller.dart';
import '../widget.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 181, 101, 1),
        body: Stack(
          children: [
            Positioned(
              top: 00,
              right: 00,
              child: Container(
                height: MediaQuery.of(context).size.height * .35,
                child: Image.asset(
                  'IMAGES/pen.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 00,
                left: 00,
                child: roundContainer(
                  context: context,
                  lradius: 80,
                  rradius: 80,
                  rMargin: 0,
                  lMargin: 0,
                  child: Column(
                    children: [
                      circleAvatar(image: 'IMAGES/conatusDark.jpg', radius: 50),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'E-mail', icon: Icon(Icons.email)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Password', icon: Icon(Icons.security)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: ' Confirm Password',
                            icon: Icon(Icons.security)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      button(
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageControler()),
                              );
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: b,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
