import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchCall(int no) async {
    var url = 'tel:${no.toString()}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make call ';
    }
  }

  void _launchEmail(String email) async {
    var url = 'mailto:$email?subject= resume';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not make email ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 00,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Profile ',
            style: GoogleFonts.dancingScript(color: Colors.white, fontSize: 30),
            // style: TextStyle(
            //     fontFamily:  GoogleFonts.lato(),
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 30.0)
          ),
        ),
      ),
      Positioned(
        bottom: 00,
        left: 00,
        child: Container(
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.only(right: 4),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(80.0)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Mohit Kumar Singh '),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.all(10),
                    // color: Colors.white,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('IMAGES/mypic.jpg'),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.blue,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              Text('bio'),
              Spacer(),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text('Contact'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () => _launchUrl(
                          'https://instagram.com/mohit_kumar_singh?igshid=a7p8i0f07u98'),
                      icon: Icon(
                        MdiIcons.instagram,
                        color: Colors.black,
                      )),
                  IconButton(
                    onPressed: () => _launchCall(8527172366),
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                      onPressed: () => _launchUrl(
                          'https://www.linkedin.com/in/mohit-kumar-singh-mks'),
                      icon: Icon(
                        MdiIcons.linkedin,
                        color: Colors.black,
                      )),
                  IconButton(
                    onPressed: () => _launchEmail('mks61201625@gmailcom'),
                    icon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
