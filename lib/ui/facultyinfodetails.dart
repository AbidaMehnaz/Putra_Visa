import 'package:flutter/material.dart';
import 'package:flutter_starter/ui/departmentdetails.dart';

class FacultyInfoDetails extends StatelessWidget {
  final FacultyName facultyname;

  FacultyInfoDetails(this.facultyname);

  @override
  Widget build(BuildContext context) {
    final facultyThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(facultyname.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final baseTextStyle = const TextStyle(
      fontFamily: 'Times New Roman',
    );
    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none,
    );

    final facultyCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(60.0, 20.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(facultyname.name,
              style: headerTextStyle, textAlign: TextAlign.left),
          new Container(height: 10.0),
        ],
      ),
    );

    final facultyCard = new Container(
      child: facultyCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
        color: new Color(0xFF6A0E06),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
        onTap: () => Navigator.of(context).push(new PageRouteBuilder(
              pageBuilder: (_, __, ___) => new Department(facultyname),
            )),
        child: new Container(
          height: 120.0,
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              facultyCard,
              facultyThumbnail,
            ],
          ),
        ));
  }
}

class FacultyName {
  final String id;
  final String name;
  final String image;
  final List<String> department;

  const FacultyName({
    this.id,
    this.name,
    this.image,
    this.department,
  });
}

List<FacultyName> facultyname = [
  const FacultyName(
    id: "1",
    name: "Faculty of Computer Science and Information Technology",
    image: "assets/images/fsktm.png",
    department: <String>[
      'assets/images/SEdept.png',
      'assets/images/Muldept.png',
      'assets/images/Netdept.png',
      'assets/images/CSdept.png'
    ],
  ),
  const FacultyName(
    id: "2",
    name: "Faculty of Food Science and Technology",
    image: "assets/images/food_tech.png",
    department: <String>[
      'assets/images/foodscience.png',
      'assets/images/food_service.png',
      'assets/images/foodtech.png'
    ],
  ),
  const FacultyName(
    id: "3",
    name: "Faculty of Medicine and Health Science",
    image: "assets/images/medfeculty.png",
    department: <String>[
      'assets/images/biomed.png',
      'assets/images/communityhealth .png',
      'assets/images/environmental health.png',
      'assets/images/neutrition .png',
      'assets/images/nursing.png'
    ],
  ),
  const FacultyName(
    id: "4",
    name: "Faculty of Engineering",
    image: "assets/images/eng.png",
    department: <String>[
      'assets/images/aerospaceeng.png',
      'assets/images/agricultureandbioeng.png',
      'assets/images/chemicaleng.png',
      'assets/images/civileng.png',
      'assets/images/communication-1.png',
      'assets/images/electricaleng.png',
      'assets/images/foodeng.png',
      'assets/images/mechanicaleng.png'
    ],
  ),
  const FacultyName(
    id: "5",
    name: "Faculty of Educational Studies",
    image: "assets/images/edufac.png",
    department: <String>[
      'assets/images/counselling.png',
      'assets/images/hrscience.png',
      'assets/images/langhuman.png',
      'assets/images/professional.png',
      'assets/images/sports.png'
    ],
  ),
  const FacultyName(
    id: "6",
    name: "Faculty of Agriculture",
    image: "assets/images/agriculture.png",
    department: <String>[
      'assets/images/acquaculture.png',
      'assets/images/agribusiness.png',
      'assets/images/animal.png',
      'assets/images/land management.png',
      'assets/images/plant protection.png'
    ],
  ),
  const FacultyName(
    id: "7",
    name: "School of Business And Economics",
    image: "assets/images/eco.png",
    department: <String>['assets/images/eco_dept.png'],
  ),
  const FacultyName(
    id: "8",
    name: "Faculty of Forestry",
    image: "assets/images/forest.png",
    department: <String>[
      'assets/images/environment.png',
      'assets/images/forestryScience.png',
      'assets/images/NaturalResource.png',
      'assets/images/naturePark.png'
    ],
  ),
  const FacultyName(
    id: "9",
    name: "Faculty of Human Ecology",
    image: "assets/images/ecologyfac.png",
    department: <String>[
      'assets/images/family studies.png',
      'assets/images/government.png',
      'assets/images/music.png',
      'assets/images/resource management.png',
      'assets/images/social development.png'
    ],
  ),
  const FacultyName(
    id: "10",
    name: "Faculty of Biotechnology & Biomolecular Sciences",
    image: "assets/images/biotech.png",
    department: <String>[
      'assets/images/bio processtech.png',
      'assets/images/biochemistry.png',
      'assets/images/microbiology.png',
      'assets/images/molecular biology.png'
    ],
  ),
  const FacultyName(
    id: "11",
    name: "Faculty of Modern Languages and Communication",
    image: "assets/images/lang.png",
    department: <String>[
      'assets/images/communication.png',
      'assets/images/english.png',
      'assets/images/foreign lang.png',
      'assets/images/Malay lang.png'
    ],
  ),
  const FacultyName(
    id: "12",
    name: "Faculty of Science",
    image: "assets/images/science.png",
    department: <String>[
      'assets/images/biology.png',
      'assets/images/chemistry.png',
      'assets/images/mathematics.png',
      'assets/images/physics.png'
    ],
  ),
  const FacultyName(
    id: "13",
    name: "Faculty of Design and Architecture",
    image: "assets/images/arch.png",
    department: <String>[
      'assets/images/architecture.png',
      'assets/images/Industrial Design.png',
      'assets/images/landscape.png'
    ],
  ),
];
