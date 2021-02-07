import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/facultyinfo.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'COURSE REGISTRATION FORM',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.only(top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/registration.jpeg',
                height: 280,
                width: 200,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(children: [
                  Text(
                    'Sample Paper',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ]),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'In order to acquire this document please go to ESMP',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Then My Register -> Course Regsitration Slip',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Before Printing send to Academic Advisor(PA) or Head of Department',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'After it is Stamped Print 2 copies of this slip',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Include this page when submitting your documents for visa renewal',
                              style: GoogleFonts.ptSansNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FacultyInfo()),
                        );
                      },
                      child: Text('Faculty Information',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          )),
                      color: Colors.red[900],
                      elevation: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
