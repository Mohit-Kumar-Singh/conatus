import 'package:conatus/pagecontroller.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                padding: EdgeInsets.all(18),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .65,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80.0),
                      topRight: Radius.circular(80.0)),
                ),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageControler()),
                      );
                    },
                    child: Text('login')),
              ))
        ],
      ),
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 300,
      //         width: double.infinity,
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage('IMAGES/mypic.jpg'), fit: BoxFit.fill),
      //         ),
      //         child: Stack(
      //           children: [
      //             Positioned(
      //                 bottom: 90,
      //                 left: 00,
      //                 child: Container(
      //                   margin: EdgeInsets.only(left: 4),
      //                   padding: EdgeInsets.all(18),
      //                   width: MediaQuery.of(context).size.width,
      //                   height: MediaQuery.of(context).size.height * .75,
      //                   decoration: BoxDecoration(
      //                     color: Colors.yellow,
      //                     borderRadius: BorderRadius.only(
      //                         topLeft: Radius.circular(80.0),
      //                         topRight: Radius.circular(80.0)),
      //                   ),
      //                   child: Text('login'),
      //                 ))
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
