import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/informationMedical.dart';
import 'package:untitled1/douma2/medical/decriptionMe/doctors.dart';
import 'package:untitled1/douma2/medical/decriptionMe/medical_store.dart';
import 'package:untitled1/douma2/medical/decriptionMe/phermacy.dart';
import 'package:untitled1/douma2/medical/medical.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionCategory extends StatefulWidget {
  @override
  _DescriptionCategoryState createState() => _DescriptionCategoryState();
}

class _DescriptionCategoryState extends State<DescriptionCategory>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });

    _animation2 = Tween<double>(begin: 0, end: -30)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF57752),
        elevation: 0,
        title: Text('القسم الطبي'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 13),
              cards(
                'المستشفيات',
                'في دوما',
                Icons.local_hospital,
                Hospital(),
              ),
              cards(
                'العيادات والأطباء',
                'في دوما',
                Icons.local_hospital_rounded,
                Doctors(),
              ),
              cards(
                'الجمعيات والمراكز',
                'في دوما',
                Icons.account_balance_outlined,
                MedicalStore(),
              ),
              cards(
                'الصيدليات',
                'في دوما',
                Icons.local_pharmacy,
                Phyrmace(),
              ),
              cards(
                'الأرقام الهامة',
                'في دوما',
                Icons.phone_android,
                UserPagePhoneImportant(
                  username: 'الأرقام الإسعافية',
                  about: 'هواتف ضرورية لكل شخص قد يحتاجها',
                  phoneNumber: '0115710619',
                  phoneNumber1: '0965033207',
                  phoneNumber2: '011133',
                  phoneNumber3: '0947999306',
                  phoneNumber4: '0115710570',
                  phoneNumber5: '0115711579',
                  phoneNumber6: '0933745725',
                ),
              ),
            ],
          ),

          // top me rahna
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }

  Widget groupOfCards(
    String title1,
    String subtitle1,
    IconData icon1,
    Widget route1,
  ) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cards(title1, subtitle1, icon1, route1),
        ],
      ),
    );
  }

  Widget cards(String title, String subtitle, IconData icon, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: Transform.translate(
        offset: Offset(0, _animation2.value),
        child: InkWell(
          enableFeedback: true,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => route,
                ));
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
            padding: EdgeInsets.all(_w / 30),
            height: _w / 4.4,
            width: _w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffEDECEA),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.withOpacity(.1),
                  radius: _w / 15,
                  child: Icon(
                    icon,
                    color: Colors.cyan,
                    size: _w / 10.0,

                    // fit: BoxFit.cover,
                    // width: _w / 2.36,
                    // height: _w / 2.6
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  width: _w / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        textScaleFactor: 1.6,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(.8),
                        ),
                      )
                    ],
                  ),
                ),
                Icon(Icons.navigate_next_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
