import 'package:conatus/profileDetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget.dart';
import 'package:conatus/data.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var _width = 10.0;

  Widget l;

  animatedcontainer() {
    setState(() {
      _width = _width == 10 ? 130 : 10;
      if (_width > 9) {
        l = Text('');
      }
      if (_width == 130) {
        l = FlatButton(
          onPressed: () {},
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              MdiIcons.logout,
              color: o,
            ),
            Text('Logout',
                style: GoogleFonts.montserratAlternates(
                    color: o, fontSize: 20, fontWeight: FontWeight.bold)),
          ]),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _width == 10
          ? () {}
          : () {
              animatedcontainer();
            },
      child: Scaffold(
        backgroundColor: o,
        body: Stack(children: [
          Positioned(
            left: 00,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Profile',
                    style: GoogleFonts.adamina(color: b, fontSize: 30),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Text('Edit Profile',
                          style: GoogleFonts.montserratAlternates(
                            color: b,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 15,
            child: GestureDetector(
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    color: b,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                duration: Duration(milliseconds: 500),
                width: _width,
                height: 55,
                child: l,
              ),
              onTap: _width == 150
                  ? () {}
                  : () {
                      animatedcontainer();
                    },
            ),
          ),
          Positioned(
              bottom: 00,
              right: 00,
              child: roundContainer(
                context: context,
                rradius: 80,
                lradius: 0,
                rMargin: 4,
                lMargin: 0,
                child: Profiledetails(
                  name: Dummy_profile[4].name,
                  skill: Dummy_profile[4].skill,
                  profiephoto: Dummy_profile[4].profiephoto,
                  linkedin: Dummy_profile[4].linkedin,
                  instaurl: Dummy_profile[4].instaurl,
                  mail: Dummy_profile[4].mail,
                  phoneNo: Dummy_profile[4].phoneNo,
                  bio: Dummy_profile[4].bio,
                ),
              ))
        ]),
      ),
    );
  }
}
