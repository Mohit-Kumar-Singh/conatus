import 'package:flutter/material.dart';
import '../pagecontroller.dart';
import '../widget.dart';

class Signup extends StatelessWidget {
  final Color o = Color.fromRGBO(255, 181, 101, 1);
  final Color b = Color.fromRGBO(31, 16, 22, 1);
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
                //width: double.infinity,
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
                  lradius: 0,
                  rradius: 0,
                  rMargin: 5,
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

                      //   children: [
                      //      Checkbox(
                      //        onChanged: (_) {},
                      //        value: false,
                      //      ),
                      //     Text('Keep me Logged')
                      //   ],
                      // ),
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
                              // style: TextStyle(color: Colors.white),
                            )),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // RichText(
                      //   text: TextSpan(
                      //     text: 'Forgot Password ? ',
                      //     style: TextStyle(color: Colors.black),
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //           text: 'Recover Password',
                      //           style: TextStyle(
                      //               color: b,
                      //               fontStyle: FontStyle.italic,
                      //               decoration: TextDecoration.underline)),
                      //     ],
                      //   ),
                      // ),
                      // Spacer(),
                      // RichText(
                      //   text: TextSpan(
                      //     text: 'Do not have an Account ! ',
                      //     style: TextStyle(color: Colors.black),
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //         text: 'Signup here',
                      //         recognizer: TapGestureRecognizer()
                      //           ..onTap = () {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) => PageControler()),
                      //             );
                      //           },
                      //         style: TextStyle(
                      //             color: b,
                      //             fontStyle: FontStyle.italic,
                      //             decoration: TextDecoration.underline),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // // Divider(
                      // //   indent: 20,
                      // //   endIndent: 20,
                      // // )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
