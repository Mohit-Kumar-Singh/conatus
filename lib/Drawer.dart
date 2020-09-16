import 'package:flutter/material.dart';

Widget customText(text) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(5),
      // margin: EdgeInsets.all(5),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.chevron_right,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
// Widget customText(
//   text,
// ) {
//   return ListTile(
//     contentPadding: EdgeInsets.all(6),
//     leading: Icon(
//       Icons.chevron_right,
//       color: Colors.black,
//       // size: 20,
//     ),
//     title: Text(
//       text,
//       style: TextStyle(
//         //fontSize: 20,
//         color: Colors.black,
//       ),
//     ),
//     onTap: () {},
//   );
// }

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          child: Column(
            children: [
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
                  backgroundImage: AssetImage('IMAGES/ConatusDark.jpg'),
                ),
              ),
              Text(
                'Conatus ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'LEARN. IMPROVISE. GROW',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                ),
              ),
              Divider(
                color: Colors.black54,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              customText('Team'),
              customText('Contact'),
              customText('About college')
            ],
          ),
        ),
      ),
    );
  }
}
