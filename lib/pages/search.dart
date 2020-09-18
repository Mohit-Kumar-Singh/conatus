import 'package:conatus/card.dart';
import 'package:conatus/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget.dart';
import '../data.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: o,
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 00,
                right: 00,
                child: Container(
                  height: height * .35,
                  child: Image.asset(
                    'IMAGES/search.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  left: 00,
                  top: height * .085,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 24, 18, 18),
                    child: Text('Search',
                        style: GoogleFonts.adamina(color: b, fontSize: 30.0)),
                  )),
              Positioned(
                  bottom: 00,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      roundContainer(
                        context: context,
                        lradius: 80,
                        rradius: 80,
                        rMargin: 0,
                        lMargin: 0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 24, 18, 18),
                          child: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(color: b, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(color: b, width: 2),
                                  ),
                                  labelText: 'Search',
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * .5,
                                //color: Colors.cyan,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return Card1(
                                      name: Dummy_profile[index].name,
                                      skill: Dummy_profile[index].skill,
                                      profiephoto:
                                          Dummy_profile[index].profiephoto,
                                      linkedin: Dummy_profile[index].linkedin,
                                      instaurl: Dummy_profile[index].instaurl,
                                      mail: Dummy_profile[index].mail,
                                      phoneNo: Dummy_profile[index].phoneNo,
                                      bio: Dummy_profile[index].bio,
                                    );
                                  },
                                  itemCount: Dummy_profile.length,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
