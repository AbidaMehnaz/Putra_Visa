import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'HEALTH INSURANCE COVER NOTE',
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
                    'assets/images/health.jpeg',
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
                            style: TextStyle(
                                color: Colors.blue[700], fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'In order to acquire this document please vist your insurance provider',
                                  style: GoogleFonts.ptSansNarrow(
                                      textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ])));
  }
}
