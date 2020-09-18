import 'package:conatus/profileDetail.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../widget.dart';
import 'package:conatus/data.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
    ]);
  }
}
