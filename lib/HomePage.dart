import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectDate;
  // Widget bottomModalSheet;

  Widget bottomModalSheet(String text, Widget child) {
    return FlatButton(
      child: Text(text),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * .60,
              color: Colors.white,
              child: Card(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: child,
                ),
              ),
            );
          },
        );
      },
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
    return Stack(children: [
      Positioned(
        right: 00,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Portal',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ),
      ),
      Positioned(
        bottom: 00,
        left: 00,
        child: Container(
          margin: EdgeInsets.only(left: 4),
          padding: EdgeInsets.all(18),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0)),
          ),
          child: Column(
            children: [
              Row(
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
                      backgroundImage: AssetImage('IMAGES/conatusDark.jpg'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Conatus',
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
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.blue,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              bottomModalSheet(
                'Attendance',
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'year'),
                      keyboardType: TextInputType.number,
                    ),
                    FlatButton(
                        onPressed: _presentate,
                        textColor: Theme.of(context).primaryColor,
                        child: Text(
                          'Date ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Submit'),
                      textColor: Colors.purple,
                    )
                  ],
                ),
              ),
              bottomModalSheet(
                'Queries',
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Query'),
                    ),
                    FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Submit'),
                      textColor: Colors.purple,
                    )
                  ],
                ),
              ),
              bottomModalSheet(
                'Project Update',
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Project Update'),
                    ),
                    FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Submit'),
                      textColor: Colors.purple,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
