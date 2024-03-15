import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Electricity extends StatefulWidget {
  @override
  _ElectricityState createState() => _ElectricityState();
}

class _ElectricityState extends State<Electricity>
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
        title: Text('كهربجي'),
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
                'أبو المجد المشعوت',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو المجد المشعوت',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0997643528',
                ),
              ),
              cards(
                'أبو خالد الصمادي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو خالد الصمادي',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0993478700',
                ),
              ),
              cards(
                'أبو علي الحتاوي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو علي الحتاوي',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0981338294',
                ),
              ),
              cards(
                'أبو عمر صيصان',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عمر صيصان',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0951492674',
                ),
              ),
              cards(
                'شيخ القصير',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو كاسم شيخ القصير',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0968797802',
                ),
              ),
              cards(
                'أبو محمد النجار',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمد النجار',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0956800204',
                ),
              ),
              cards(
                'شيخ القصير',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمد شيخ القصير',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0933919835',
                ),
              ),
              cards(
                'أبو أسامة البعلي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أسامة البعلي',
                  about:
                  'تعهدات كهربائية - أنظمة شبكات ومراقبة - صيانة عامة - دارات كهربائية والكترونية - دراسة وتركيب ألواح طاقة شمسية',
                  phoneNumber: '0981677832',
                ),
              ),
              cards(
                'أبو بشار داوود',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو بشار داوود',
                  about:
                  'معلم تمديدات كهرباء للمنازل - تمديد ألواح طاقة شمسية',
                  phoneNumber: '0933919835',
                ),
              ),
              cards(
                'أبو ياسر تلجة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو ياسر تلجة',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0932287391',
                ),
              ),
              cards(
                'أبو أمين قشوع',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أمين قشوع',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0938857065',
                ),
              ),
              cards(
                'أبو عماد أحميد',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عماد أحميد',
                  about:
                  'معلم تمديدات كهرباء للمنازل - تركيب طاقات شمسية',
                  phoneNumber: '0934357904',
                ),
              ),
              cards(
                'أبو حمزة الريس',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو حمزة الريس',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '09813533981',
                ),
              ),
              cards(
                'أبو خالد حنن',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو خالد حنن',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0962366492',
                ),
              ),
              cards(
                'أبو هيثم رسلان',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو هيثم رسلان',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0959170510',
                ),
              ),
              cards(
                'أبو علاء قدورة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو علاء قدورة',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0996464497',
                ),
              ),
              cards(
                'أبو سامر رجب',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'أبو سامر رجب',
                  about:
                  'معلم تمديدات كهرباء للمنازل - تمديد ألواح طاقة شمسية \n أرقام أخرى للتواصل: 0952151756 ',
                  phoneNumber: '0992235282',
                  location: 'https://www.google.com/maps/place/HCG2%2B2MM%D8%8C+%D8%AF%D9%88%D9%85%D8%A7%D8%8C+%D8%B3%D9%88%D8%B1%D9%8A%D8%A7%E2%80%AD/@33.574739,36.4040877,17z/data=!4m12!1m5!3m4!2zMzPCsDM0JzI5LjEiTiAzNsKwMjQnMDYuOCJF!8m2!3d33.574739!4d36.401899!3m5!1s0x1518efa37977c455:0x9c31df4e64ef3974!8m2!3d33.574956!4d36.4017214!16s%2Fg%2F11l9y466cz?entry=ttu',
                ),
              ),
              cards(
                'عبد الدايم',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محروس عبد الدايم',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0947575270',
                ),
              ),
              cards(
                'أبو أسامة عودة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أسامة عودة',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0933859371',
                ),
              ),
              cards(
                'أبو زياد النجار',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو زياد النجار',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0937842992',
                ),
              ),
              cards(
                'أبو هاني أنيس',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو هاني أنيس',
                  about:
                  'معلم تمديدات كهرباء للمنازل',
                  phoneNumber: '0952809242',
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
