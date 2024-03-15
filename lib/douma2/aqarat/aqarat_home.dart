import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AqaratAndTahahodat extends StatefulWidget {
  @override
  _AqaratAndTahahodatState createState() => _AqaratAndTahahodatState();
}

class _AqaratAndTahahodatState extends State<AqaratAndTahahodat>
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
        title: Text('عقارات وتعهدات'),
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
                'أبو كاسم كريم',
                'مكتب عقاري',
                Icons.person,
                UserPage(
                  username: 'أبو كاسم كريم',
                  about:
                      'مكتب عقاري - بيع - شراء - استئجار - يوجد لجنة للتتمين العقاري - فيلات - شقق سكنية \n أرقام أخرى للتواصل: 0934965733 ',
                  location:
                      'https://www.google.com/maps/place/%D8%B4%D8%B1%D9%83%D8%A9+%D8%A7%D9%84%D9%87%D8%B1%D9%85+%D9%84%D9%84%D8%B5%D8%B1%D8%A7%D9%81%D8%A9+%D9%88%D8%A7%D9%84%D8%AA%D8%AD%D9%88%D9%8A%D9%84%E2%80%AD/@33.5706169,36.4058346,19z/data=!4m10!1m2!2m1!1z2KfZhNmH2LHZhSDYr9mI2YXYpw!3m6!1s0x1518ef95c24f13f3:0xa2104ad655839481!8m2!3d33.5706169!4d36.4047105!15sChPYp9mE2YfYsdmFINiv2YjZhdinkgEEYmFua-ABAA!16s%2Fg%2F11ss5h83xj?entry=ttu',
                  phoneNumber: '0944730702',
                ),
              ),
              cards(
                'الريف للأعمال العقارية',
                'مكتب عقاري',
                Icons.person,
                UserPage(
                  username: 'الريف للتجارة والأعمال العقارية',
                  about:
                      'تجارة - أعمال عقارية - تعقيب معاملات \n أرقام أخرى للتواصل: 0115713087 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%AD%D9%83%D9%85%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5710482,36.3969047,19.96z/data=!4m5!3m4!1s0x1518ef396c5701af:0x3ae7820b736df33e!8m2!3d33.5711731!4d36.3968089?authuser=0&entry=ttu',
                  phoneNumber: '0944411145',
                ),
              ),
              cards(
                'أبو فهد التيناوي',
                'مكتب عقاري',
                Icons.person,
                UserPage(
                  username: 'أبو فهد التيناوي',
                  about:
                      'مكتب عقاري - بيع - شراء - استئجار - يوجد لجنة للتتمين العقاري - فيلات - شقق سكنية',
                  location:
                      'https://www.google.com/maps/@33.5710819,36.4112469,21z?entry=ttu',
                  phoneNumber: '0997592579',
                ),
              ),
              cards(
                'معاملات عقارية',
                'في دوما',
                Icons.person,
                UserPage(
                  username: 'معاملات عقارية',
                  about: 'جميع المعاملات في دوما',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%AF%D9%8A%D8%B1%D9%8A%D8%A9+%D9%85%D8%A7%D9%84%D9%8A%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5709719,36.402561,17.35z/data=!4m6!3m5!1s0x1518efa260f9775d:0xc63bea2c1779e27d!8m2!3d33.571829!4d36.4010686!16s%2Fg%2F1tf5571b?entry=ttu',
                  phoneNumber: '0994205493',
                ),
              ),
              cards(
                'مكتب معيكة',
                'تعهدات',
                Icons.person,
                UserPage(
                  username: 'مكتب معيكة',
                  about:
                  'تركسات - مداحل - رافعات - تزفيت طرقات - ترحيل أنقاض - حفريات - تأجير معدات هندسية - مداحل وقمبريصات',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%83%D8%AA%D8%A8+%D9%85%D8%B9%D9%8A%D9%83%D8%A9%E2%80%AD/@33.565675,36.4023515,19.85z/data=!4m5!3m4!1s0x1518ef8e5addf4db:0xf9c0d5ff62944977!8m2!3d33.5658723!4d36.4020885?entry=ttu',
                  phoneNumber: '0946545030',
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


