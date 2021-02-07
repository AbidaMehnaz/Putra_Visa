import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class VisaPass extends StatefulWidget {
  @override
  VisaPassState createState() => VisaPassState();
}

class VisaPassState extends State<VisaPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'VISA RENEWAL FORM',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 290,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/images/Visapass.png',
                    height: 280,
                    width: 170,
                  ),
                  Image.asset(
                    'assets/images/Visapass2.jpeg',
                    height: 280,
                    width: 170,
                  ),
                ],
              ),
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
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '• ',
                      style: TextStyle(color: Colors.blue[700], fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'In order to acquire this document please visit this link ',
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
                            text: 'Download the pdf file  ',
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
                            text: 'Print 1 copy of each page  ',
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
                            text: 'Fill up the form with your details ',
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
                                'Include this page when submitting your documents for visa renewal ',
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
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {
                      launchURL();
                    },
                    child: Text('Follow Link',
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
      ),
    );
  }
}

launchURL() async {
  const url =
      'https://intl.upm.edu.my/upload/dokumen/20200316095744CHECKLIST_STUDENT_RENEWAL_.pdf';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
