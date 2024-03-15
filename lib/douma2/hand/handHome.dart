import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> with SingleTickerProviderStateMixin {
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
        title: Text('خدمات جامعية'),
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
                'مركز الفيحاء',
                'للخدمات الجامعية',
                'images/shmale.jpg',
                UserPageCamera(
                  image: 'images/shmale.jpg',
                  username: 'مركز الفيحاء للخدمات الجامعية في دوما',
                  about:
                  'يقدم مركز الفيحاء خدمات التسجيل على المفاضلات - منح الجامعات الخاصة - المنح الخارجية - كل مايلزم الطالب في المرحلة الجامعية من أدوات وقرطاسية ',
                  phone: '0935120714',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8%D8%A9+%D8%A7%D9%84%D9%81%D9%8A%D8%AD%D8%A7%D8%A1%E2%80%AD/@33.5698712,36.3967148,19.22z/data=!4m10!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m5!1s0x1518ef27188d0b9d:0xe9dc6597cb7b8e1!8m2!3d33.5699463!4d36.3957567!16s%2Fg%2F11v5g1p4dv?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'شركة نماء',
                'للخدمات المالية والإدارية ',
                'images/namaa.jpg',
                UserPageCamera(
                  image: 'images/namaa.jpg',
                  username: 'نماء للخدمات المالية والإدارية',
                  about:
                  'مؤسسة محاسبة - حسابات للمنشاّت - تدريب إدري - دورات حاسوب - دورات برنامج الأمين - برنامج محاسبات - تسويق الكتروني - مركز للامتحان الوطني - مركز معتمد للبرامج المحاسبة الأمين والإداري - تأمين فرص عمل لخريجي الاقتصاد والمحاسبة \n أرقام أخرى للتواصل: 0938699721 - 0994127033 ',
                  phone: '0115712039',
                  location: 'https://www.facebook.com/namaa.acca?mibextid=2JQ9oc',
                ),
              ),
              cards(
                'معهد جلجامش',
                'في دوما',
                'images/gelgamesh.jpg',
                UserPageCamera(
                  image: 'images/gelgamesh.jpg',
                  username: 'معهد جلجامش',
                  about:
                  'دبلوم إدارة أعمال - دبلوم إدارة المكاتب السياحية والطيران - دبلوم تقانة المعلومات - دبلوم الإعلام الحديث - دبلوم التسويق والغرافيك ديزاين - دبلوم اللغة الألمانية إرشاد \n أرقام أخرى للتواصل: 0987216080 - 0115712254 ',
                  phone: '0998704020',
                  location: 'https://www.facebook.com/namaa.acca?mibextid=2JQ9oc',
                ),
              ),
              cards(
                'أكاديمية more+',
                'للتنمية والتدريب',
                'images/more.jpg',
                UserPageCamera(
                  image: 'images/more.jpg',
                  username: 'الأكاديمية التعليمية في دوما ',
                  about:
                  'خدمات الدورات التدريبية - المهنية - التعليمية - دورات جاسوبية',
                  phone: '0938433511',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8%D8%A9+%D8%A7%D9%84%D9%81%D9%8A%D8%AD%D8%A7%D8%A1%E2%80%AD/@33.5698712,36.3967148,19.22z/data=!4m10!1m3!2m2!1z2YXYt9in2LnZhQ!6e5!3m5!1s0x1518ef27188d0b9d:0xe9dc6597cb7b8e1!8m2!3d33.5699463!4d36.3957567!16s%2Fg%2F11v5g1p4dv?authuser=0&entry=ttu',
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
      String image1,
      Widget route1,
      ) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cards(title1, subtitle1, image1, route1),
        ],
      ),
    );
  }

  Widget cards(String title, String subtitle, String image, Widget route) {
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
                  child: Image.asset(image,
                      fit: BoxFit.cover, width: _w / 2.36, height: _w / 2.6),
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
