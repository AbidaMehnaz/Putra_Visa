import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/facultyinfodetails.dart';

class Department extends StatelessWidget {
  final FacultyName facultyname;

  Department(this.facultyname);
  final primaryColor = const Color(0xFF6A0E06);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'DEPARTMENT INFORMATIONS',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
        elevation: 0.0,
      ),
      body: new Container(
        color: const Color(0xFFB7352A),
        constraints: new BoxConstraints.expand(),
        padding: EdgeInsets.all(16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Hero(
              tag: "department-hero-${facultyname.id}",
              child: new Image.asset(
                facultyname.image,
                width: 96.0,
                height: 96.0,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Column(
                children: [
                  new Text(
                    facultyname.name,
                    style: TextStyle(
                        fontSize: 14.0,
                        height: 2.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                child: SizedBox(
              height: 800.0,
              child: new ListView.separated(
                itemCount: facultyname.department.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new Image.asset(facultyname.department[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 25,
                  );
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
