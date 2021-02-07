import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RenewalChecklistPage extends StatefulWidget {
  @override
  RenewalChecklistPageState createState() => RenewalChecklistPageState();
}

class RenewalChecklistPageState extends State<RenewalChecklistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'CHECKLIST FOR VISA RENEWAL',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/checklist.jpeg',
                height: 280,
                width: 200,
              ),
              Container(
                margin: EdgeInsets.all(24),
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
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: '• ',
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
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
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
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
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Print 1 copy of this page   ',
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
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Follow the instructions on this page ',
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
                        style: TextStyle(color: Colors.blue[700], fontSize: 14),
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
                margin: EdgeInsets.all(24),
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
        ));
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
