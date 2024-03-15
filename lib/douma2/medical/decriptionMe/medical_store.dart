import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/locationUser.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_Medical.dart';

class MedicalStore extends StatefulWidget {
  @override
  _MedicalStoreState createState() => _MedicalStoreState();
}

class _MedicalStoreState extends State<MedicalStore>
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
        title: Text('الجمعيات والمراكز'),
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
                'جمعية الصحة الخيرية',
                'في دوما',
                Icons.local_hospital,
                UserPage(
                  username: 'جمعية الصحة الخيرية',
                  about: ' تقدم الجمعية خدمات الرعاية الصحية للأشخاص ذوي الوضع الاقتصادي والاجتماعي المتدهور. تتضمن أنشطتها توفير الرعاية الأساسية والعلاج اللازم، ومكافحة الأمراض المزمنة والعدوى. بالإضافة إلى ذلك، تسعى الجمعية لزيادة الوعي الصحي وتثقيف الجمهور من خلال حملات التوعية والندوات - عيادات خدمية.',
                  phoneNumber: '0115712070',
                  location: 'https://www.google.com/maps/place/%D8%AC%D9%85%D8%B9%D9%8A%D8%A9+%D8%A7%D9%84%D8%B5%D8%AD%D8%A9+%D8%A7%D9%84%D8%AE%D9%8A%D8%B1%D9%8A%D8%A9+%D9%81%D9%8A+%D9%85%D8%AF%D9%8A%D9%86%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5669535,36.3954158,17.78z/data=!4m6!3m5!1s0x1518eff755d87e7f:0x91e4cc3f72a389d9!8m2!3d33.5669797!4d36.3938772!16s%2Fg%2F11mvyqk278?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'المستوصف الطبي',
                'في دوما',
                Icons.medical_services,
                LocationUser(
                  username: 'المستوصف الطبي',
                  about: 'لقاحات للأطفال - توعية طبية - عيادات طبية خدمية',
                  location: 'https://www.google.com/maps/@33.573128,36.4111476,20.12z?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الهلال الأحمر',
                'في دوما',
                Icons.medical_services,
                UserPage(
                  username: 'الهلال الأحمر',
                  about: 'الرعاية الطبية - المساعدات الإنسانية - الإسعاف والجرحى - التوعية الصحية \n أرقام اخرى للتواصل: 0115710619 ',
                  phoneNumber: '0965033207',
                  location: 'https://www.google.com/maps/place/Syrian+Arab+Red+Crescent/@33.5707581,36.4059905,19.6z/data=!4m9!1m2!2m1!1z2KfZhNmH2YTYp9mEINin2YTYo9it2YXYsSDYqNin2YTZgtix2Kgg2YXZhiDYr9mI2YXYp9iMINiz2YjYsdmK2Kc!3m5!1s0x1518efbd3ec2800f:0x3a6c211d78038199!8m2!3d33.5707942!4d36.4051526!16s%2Fg%2F11dxctfc8c?authuser=0&entry=ttu',
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
