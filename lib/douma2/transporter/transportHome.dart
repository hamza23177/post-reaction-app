import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transporter extends StatefulWidget {
  @override
  _TransporterState createState() => _TransporterState();
}

class _TransporterState extends State<Transporter> with SingleTickerProviderStateMixin {
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
        title: Text('خدمات التوصيل'),
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
                'أبو زياد الحموري',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو زياد الحموري',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0944202588',
                ),
              ),
              cards(
                'أبو رياض النعسان',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو رياض النعسان',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0933438091',
                ),
              ),
              cards(
                'أبو المجد',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو المجد',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0951688490',
                ),
              ),
              cards(
                'أبو رضا جاموس',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو رضا جاموس',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0936769424',
                ),
              ),
              cards(
                'أبو علي أحميد',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو علي أحميد',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0991191385',
                ),
              ),
              cards(
                'رياض',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'رياض',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0966670266',
                ),
              ),
              cards(
                'أبو أنس',
                'تكسي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أنس العلي',
                  about:
                  'خدمات تكسي ونقل الزبائن ضمن دمشق وريفها',
                  phoneNumber: '0949552175',
                ),
              ),
              cards(
                'أبو أحمد الريس',
                'سرفيس',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أحمد الريس',
                  about:
                  'خدمات السرفيس والميكرو ونقل الزبائن ضمن دمشق وريفها \n أرقام أخرى للتواصل:0958209889 ',
                  phoneNumber: '0997471135',
                ),
              ),
              cards(
                'أبو كاسم أمين',
                'سرفيس',
                Icons.person,
                UserPagePhone(
                  username: 'أبو كاسم أمين',
                  about:
                  'خدمات السرفيس والميكرو ونقل الزبائن ضمن دمشق وريفها ',
                  phoneNumber: '0986218361',
                ),
              ),
              cards(
                'أبو عمر أمين',
                'سرفيس',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عمر أمين',
                  about:
                  'خدمات السرفيس والميكرو ونقل الزبائن ضمن دمشق وريفها ',
                  phoneNumber: '0932596299',
                ),
              ),
              cards(
                'أبو شاكر النجار',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو شاكر النجار',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0940285611',
                ),
              ),
              cards(
                'أبو فارس الشغري',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو فارس الشغري',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0949644649',
                ),
              ),
              cards(
                'أبو سامر عيبور',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو سامر عيبور',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0982055638',
                ),
              ),
              cards(
                'أبو خالد كانون',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو خالد كانون',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0968787166',
                ),
              ),
              cards(
                'أبو محمد عيبور',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمد سلام',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0940392476',
                ),
              ),
              cards(
                'أبو ياسين النعسان',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو ياسين النعسان',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0997800960',
                ),
              ),
              cards(
                'أبو شاكر النجار',
                'سوزوكي',
                Icons.person,
                UserPagePhone(
                  username: 'أبو شاكر النجار',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0940285611',
                ),
              ),
              cards(
                'أبو عمار النبكي',
                'سيارة كبيرة',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عمار النبكي',
                  about:
                  'خدمات السوزوكي ونقل البضائع ضمن دمشق وريفها ',
                  phoneNumber: '0932979868',
                ),
              ),
              cards(
                'أبو الجود خلبوص',
                'مياه بقين',
                Icons.person,
                UserPagePhone(
                  username: 'أبو الجود خلبوص',
                  about:
                  'تعبئة مياه بقين في المنازل ',
                  phoneNumber: '0958603892',
                ),
              ),
              cards(
                'أبو زياد',
                'مياه بقين',
                Icons.person,
                UserPagePhone(
                  username: 'أبو زياد',
                  about:
                  'تعبئة مياه بقين في المنازل ',
                  phoneNumber: '0991060230',
                ),
              ),
              cards(
                'لطوف',
                'مياه بقين',
                Icons.person,
                UserPagePhone(
                  username: 'لطوف ',
                  about:
                  'تعبئة مياه بقين في المنازل',
                  phoneNumber: '0998916607',
                ),
              ),
              cards(
                'أبو بشار',
                'مياه بقين',
                Icons.person,
                UserPagePhone(
                  username: 'أبو بشار',
                  about:
                  'تعبئة مياه بقين في المنازل',
                  phoneNumber: '0967133526',
                ),
              ),
              cards(
                'أبو سليمان',
                'مياه بقين',
                Icons.person,
                UserPagePhone(
                  username: 'أبو سليمان',
                  about:
                  'تعبئة مياه بقين في المنازل',
                  phoneNumber: '0996872114',
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
