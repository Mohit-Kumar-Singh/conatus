import 'package:conatus/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'pagecontroller.dart';
import 'pages/signup.dart';
import 'widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CONATUS',
      home: MainPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        primaryColor: Color.fromRGBO(31, 16, 22, 1),
        accentColor: Color.fromRGBO(255, 181, 101, 1),
        //accentColor= orange
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: o,
      body: Stack(
        children: [
          Positioned(
            top: 00,
            right: 00,
            child: Container(
              height: height * .35,
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
                    SizedBox(
                      height: 20,
                    ),
                    button(
                      FlatButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageControler()),
                            );
                          },
                          child: Text(
                            'login',
                            style: TextStyle(
                              fontSize: 18,
                              color: b,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Forgot Password ? ',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Recover Password',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        text: 'Don\'t have an Account ! ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Signup here',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()),
                                );
                              },
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
