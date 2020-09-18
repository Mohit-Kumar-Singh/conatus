import 'package:flutter/material.dart';

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
