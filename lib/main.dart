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

// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   PageController p;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: PageView(
//         controller: p,
//         children: [
//           Login(),
//           SecondPage(),
//         ],
//       ),
//       appBar: AppBar(
//         actions: [
//           IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
//           Spacer(),
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {},
//           ),
//         ],
//         elevation: 0,
//       ),
//     );
//   }
// }

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
                      height: 5,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          onChanged: (_) {},
                          value: false,
                        ),
                        Text('Keep me Logged')
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue[300], Colors.blue[20]],
                            begin: Alignment.center,
                            //
                          ),
                          //shape: BoxShape.circle,
                          //color: Colorli,
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
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
