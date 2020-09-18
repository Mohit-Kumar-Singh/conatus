import 'package:conatus/widget.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color o = Color.fromRGBO(255, 181, 101, 1);
  final Color b = Color.fromRGBO(31, 16, 22, 1);
  DateTime selectDate;

  Widget bottomModalSheet(String label, IconData i, Widget child) {
    return Column(
      children: [
        IconButton(
          alignment: Alignment.bottomCenter,
          tooltip: label,
          icon: Icon(
            i,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  //height: MediaQuery.of(context).size.height * .70,
                  color: Colors.white,
                  child: child,
                );
              },
            );
          },
        ),
        Text(label,
            style: GoogleFonts.montserratAlternates(
              color: b,
            )),
      ],
    );
  }

  void _presentate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        selectDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(children: [
        Positioned(
          right: 00,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Portal',
              style: GoogleFonts.adamina(color: b, fontSize: 30),
            ),
          ),
        ),
        Positioned(
          bottom: 00,
          left: 00,
          child: roundContainer(
            context: context,
            lradius: 80,
            rradius: 0,
            rMargin: 0,
            lMargin: 5,
            child: Column(
              children: [
                if (height < 595)
                  Row(
                    children: [
                      circleAvatar(image: 'IMAGES/conatusDark.jpg', radius: 50),
                      Text(
                        'LEARN. IMPROVISE. GROW',
                        style: GoogleFonts.adamina(
                          fontStyle: FontStyle.italic,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                if (height > 595)
                  Column(
                    children: [
                      circleAvatar(image: 'IMAGES/conatusDark.jpg', radius: 50),
                      Text(
                        'LEARN. IMPROVISE. GROW',
                        style: GoogleFonts.adamina(
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                Container(
                  child: Image.asset(
                    'IMAGES/coding.gif',
                    fit: BoxFit.fill,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    bottomModalSheet(
                      'Attendance',
                      Icons.person_outline,
                      Column(
                        children: <Widget>[
                          textfield('Name'),
                          textfield('Year'),
                          SizedBox(
                            height: 8,
                          ),
                          FlatButton(
                              onPressed: _presentate,
                              child: Text(
                                'Date ',
                              )),
                          Spacer(),
                          button(
                            FlatButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                'Submit',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    bottomModalSheet(
                      'Query',
                      MdiIcons.quora,
                      Column(
                        children: [
                          textfield('Query'),
                          Spacer(),
                          button(
                            FlatButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Submit'),
                            ),
                          )
                        ],
                      ),
                    ),
                    bottomModalSheet(
                      'project Update',
                      Icons.update,
                      Column(
                        children: [
                          textfield('Work Update'),
                          textfield('GitHub Link'),
                          Spacer(),
                          button(
                            FlatButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Submit'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
