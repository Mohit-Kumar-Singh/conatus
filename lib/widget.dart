import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final Color o = Color.fromRGBO(255, 181, 101, 1);
final Color b = Color.fromRGBO(31, 16, 22, 1);

Widget button(Widget child) {
  return Container(
      width: double.infinity,
      decoration:
          BoxDecoration(color: o, borderRadius: BorderRadius.circular(40)),
      child: child);
}

Widget roundContainer(
    {@required BuildContext context,
    @required double lradius,
    @required double rradius,
    @required Widget child,
    @required double lMargin,
    @required double rMargin}) {
  return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.fromLTRB(lMargin, 0, rMargin, 0),
      height: MediaQuery.of(context).size.height * .7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(lradius),
            topRight: Radius.circular(rradius)),
      ),
      child: child);
}

Widget circleAvatar({@required String image, @required double radius}) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2,
        )),
    child: CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage('$image'),
    ),
  );
}

Widget textfield(String text) {
  return TextField(
    decoration: InputDecoration(
      labelText: text,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        borderSide: BorderSide(color: b, width: 2),
      ),
    ),
  );
}

Widget heading({text, double fsize, double thick, double ind, double end}) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(
          fontSize: fsize,
          color: b,
        ),
      ),
      Divider(
        thickness: thick,
        color: o,
        indent: ind,
        endIndent: end,
      )
    ],
  );
}

Widget customText(
  text,
) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.chevron_right,
        color: Colors.white,
        size: 15,
      ),
      SizedBox(
        width: 3,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ],
  );
}

// Widget profile(BuildContext context) {

//   void _launchUrl(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   void _launchCall(int no) async {
//     var url = 'tel:${no.toString()}';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not make call ';
//     }
//   }

//   void _launchEmail(String email) async {
//     var url = 'mailto:$email?subject= resume';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not make email ';
//     }
//   }

//   var height = MediaQuery.of(context).size.height;
//   return roundContainer(
//       context: context,
//       lradius: 0,
//       rradius: 80,
//       rMargin: 5,
//       lMargin: 0,
//       child: Column(
//         children: [
//           if (height < 595)
//             Row(
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Mohit Kumar Singh ',
//                       style: GoogleFonts.adamina(color: b, fontSize: 18),
//                     ),
//                     Text('App Developer',
//                         style: GoogleFonts.montserratAlternates(
//                           color: b,
//                         ))
//                   ],
//                 ),
//                 Spacer(),
//                 circleAvatar(image: 'IMAGES/mypic.jpg', radius: 50),
//               ],
//             ),
//           if (height > 595)
//             Column(
//               children: [
//                 circleAvatar(image: 'IMAGES/mypic.jpg', radius: 50),
//                 Text(
//                   'Mohit Kumar Singh ',
//                   style: GoogleFonts.adamina(color: b, fontSize: 20),
//                 ),
//               ],
//             ),
//           Divider(
//             color: o,
//             thickness: 2,
//             indent: 15,
//             endIndent: 15,
//           ),
//           Text('bio'),
//           Spacer(),
//           Container(
//             alignment: Alignment.center,
//             width: double.infinity,
//             child: Text('Contact',
//                 style: GoogleFonts.montserratAlternates(
//                   color: b,
//                 )),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                   onPressed: () => _launchUrl(
//                       'https://instagram.com/mohit_kumar_singh?igshid=a7p8i0f07u98'),
//                   icon: Icon(
//                     MdiIcons.instagram,
//                   )),
//               IconButton(
//                 onPressed: () => _launchCall(8527172366),
//                 icon: Icon(
//                   Icons.call,
//                   //color: Colors.black,
//                 ),
//               ),
//               IconButton(
//                   onPressed: () => _launchUrl(
//                       'https://www.linkedin.com/in/mohit-kumar-singh-mks'),
//                   icon: Icon(
//                     MdiIcons.linkedin,
//                     //  color: Colors.black,
//                   )),
//               IconButton(
//                 onPressed: () => _launchEmail('mks61201625@gmailcom'),
//                 icon: Icon(
//                   Icons.mail,
//                   // color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ));
// }
