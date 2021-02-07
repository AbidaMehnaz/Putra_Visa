import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reciept extends StatefulWidget {
  @override
  RecieptState createState() => RecieptState();
}

class RecieptState extends State<Reciept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Bank Reciept',
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
                'assets/images/reciept.jpeg',
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
                margin: EdgeInsets.all(20),
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
                              text: 'In order to acquire this document ',
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
                                  'Please Pay the correct amount to the desired bank',
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
                              text: 'Ask for a reciept and make 2 copies',
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
            ],
          ),
        ));
  }
}
