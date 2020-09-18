import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'widget.dart';
import 'profileDetail.dart';

class ProfilePage extends StatelessWidget {
  final Color o = Color.fromRGBO(255, 181, 101, 1);
  final Color b = Color.fromRGBO(31, 16, 22, 1);
  final String name;
  final String profiephoto;
  final String instaurl;
  final String mail;
  final String linkedin;
  final int phoneNo;
  final String skill;
  final String bio;

  ProfilePage({
    @required this.name,
    @required this.profiephoto,
    @required this.instaurl,
    @required this.mail,
    @required this.linkedin,
    @required this.phoneNo,
    @required this.bio,
    @required this.skill,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: o,
        appBar: AppBar(
          iconTheme: IconThemeData(color: b),
          backgroundColor: o,
          elevation: 0,
        ),
        body: Stack(children: [
          Positioned(
            left: 00,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Profile ',
                style: GoogleFonts.adamina(color: b, fontSize: 30),
              ),
            ),
          ),
          Positioned(
              bottom: 00,
              right: 00,
              child: roundContainer(
                  context: context,
                  lradius: 80,
                  rradius: 80,
                  rMargin: 0,
                  lMargin: 0,
                  child: Profiledetails(
                      name: name,
                      profiephoto: profiephoto,
                      instaurl: profiephoto,
                      mail: mail,
                      linkedin: linkedin,
                      phoneNo: phoneNo,
                      bio: bio,
                      skill: skill)))
        ]));
  }
}
