import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/facultyinfodetails.dart';

class FacultyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: new Color(0xFFB7352A),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: new SliverChildBuilderDelegate(
                  (context, index) =>
                      new FacultyInfoDetails(facultyname[index]),
                  childCount: facultyname.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
