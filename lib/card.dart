import 'package:conatus/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'profilePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  final String name;
  final String profiephoto;
  final String instaurl;
  final String mail;
  final String linkedin;
  final int phoneNo;
  final String skill;
  final String bio;

  Card1({
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProfilePage(
                    name: name,
                    skill: skill,
                    phoneNo: phoneNo,
                    profiephoto: profiephoto,
                    mail: mail,
                    linkedin: linkedin,
                    instaurl: instaurl,
                    bio: bio,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [o.withOpacity(0.0), o],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
        height: 70,
        width: double.infinity,
        child: Row(
          children: [
            circleAvatar(
              radius: 21,
              image: profiephoto,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: GoogleFonts.adamina(
                    color: b,
                  ),
                ),
                Text(
                  skill,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
