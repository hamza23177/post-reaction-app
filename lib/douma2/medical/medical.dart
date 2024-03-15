import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'decriptionMe/user_Medical.dart';

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital>
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
        title: Text('المستشفيات'),
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
                'مشفى حمدان',
                'في دوما',
                'images/hamdan.jpg',
                UserPageCamera(
                  username: 'مشفى حمدان',
                  about:
                      'العينية والأذنية والداخلية والجراحة والهضمية والنسائية ومخابر التحليل \n أرقام أخرى\n سائق سيارة الإسعاف: 0115897501\n استعلامات: 0945533107 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707737,36.4017787,17z/data=!4m6!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                  phone: '0115897501',
                  image: 'images/hamdan.jpg',
                ),
              ), // 0115897501
              cards(
                'مشفى النور',
                'في دوما',
                'images/noor.jpg',
                UserPageCamera(
                  username: 'مشفى النور',
                  about:
                      'العينية والأذنية والداخلية والجراحة والهضمية والنسائية\n أرقام أخرى\n للاستفسار: 0989950950 - 0989950952 - 0989950953',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                  phone: '0989950951',
                  image: 'images/noor.jpg',
                ),
              ),
              cards(
                'مشفى دوما الإسعافي',
                'في دوما',
                'images/hospitaDouma.jpg',
                UserPageCamera(
                  username: 'مشفى دوما الإسعافي',
                  about:
                      'العينية والأذنية والداخلية والجراحة والهضمية والنسائية ومخابر التحليل والتلقيح \n أرقام أخرى للتواصل: 0115710570 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5717864,36.3997818,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef9f5e1ae1ff:0x97e96a5c47154d8b!8m2!3d33.5717864!4d36.3972069!16s%2Fg%2F1tfm3p_v?authuser=0&entry=ttu',
                  phone: '0947999306',
                  image: 'images/hospitaDouma.jpg',
                ),
              ),
              cards(
                'مشفى اليمان',
                'في دوما',
                'images/yaman.jpg',
                UserPageCamera(
                  username: 'مشفى اليمان',
                  about:
                      'عيادات اليمان - داخلية -جراحة- أذنية -عظمية- نسائية- أطفال - مخبر اليمان للتحاليل الطبية \n أرقام أخرى للتواصل: 0943607259 ',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%8A%D9%85%D8%A7%D9%86%E2%80%AD/@33.5708808,36.4108897,17z/data=!3m1!4b1!4m6!3m5!1s0x1518efbd055790af:0xdb8478973185ff82!8m2!3d33.5708809!4d36.4060188!16s%2Fg%2F11cs1w2f5_?authuser=0&entry=ttu',
                  phone: '0115710115',
                  image: 'images/yaman.jpg',
                ),
              ),
            ],
          ),
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
