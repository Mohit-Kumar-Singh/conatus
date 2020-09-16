import 'package:flutter/material.dart';
import 'pagecontroller.dart';

//  flutter pub run flutter_launcher_icons:main

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // bool checkBoxVal = true;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // bool c = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CONATUS',
      home: MainPage(),
      themeMode: ThemeMode.dark,
    );
  }
}

//
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 00,
            left: 00,
            child: Image.asset(
              'IMAGES/welcome.gif',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              bottom: 00,
              left: 00,
              child: Container(
                // margin: EdgeInsets.only(left: 4),
                padding: EdgeInsets.all(25),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80.0),
                      topRight: Radius.circular(80.0)),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('IMAGES/conatusDark.jpg'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'E-mail', icon: Icon(Icons.email)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.security)),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // Row(
                    //   children: [
                    //      Checkbox(
                    //        onChanged: (_) {},
                    //        value: false,
                    //      ),
                    //     Text('Keep me Logged')
                    //   ],
                    // ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // gradient: RadialGradient(
                          //     radius: 1, colors: [Colors.blue, Colors.white]),
                          //shape: BoxShape.circle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(40)),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageControler()),
                            );
                          },
                          child: Text('login')),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Forgot Password ? ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Recover Pawword',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontStyle: FontStyle.italic)),
                        ],
                      ),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        text: 'Do not have an Account ! ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Signup here',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontStyle: FontStyle.italic)),
                        ],
                      ),
                    ),
                    // Divider(
                    //   indent: 20,
                    //   endIndent: 20,
                    // )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
