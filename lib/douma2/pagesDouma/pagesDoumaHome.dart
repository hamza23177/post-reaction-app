import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userDouma.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagesDouma extends StatefulWidget {
  @override
  _PagesDoumaState createState() => _PagesDoumaState();
}

class _PagesDoumaState extends State<PagesDouma>
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
        title: Text('قنوات دوما'),
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
                'دوما الاّن',
                'قناة',
                'images/pageDouma.jpeg',
                UserPageCameraDouma(
                  image: 'images/pageDouma.jpeg',
                  location: 'https://www.facebook.com/%D8%AF%D9%88%D9%85%D8%A7-%D8%A7%D9%84%D8%A3%D9%86-316090362412926/',
                  about:
                      'إخبارية - إعلانية - اجتماعية - تنقل واقع مدينـة دومـا وحركة الأسواق فيها بالإضافة إلى الشكاوي والخدمات',
                  username: 'دوما الاّن',
                  tele: 'https://t.me/Duomanew',
                ),
              ),
              cards(
                'دوما نبض الحياة',
                'قناة',
                'images/DoumaChannel.jpg',
                UserPageCameraDouma(
                  image: 'images/DoumaChannel.jpg',
                  location: 'https://www.facebook.com/city.duma?mibextid=b06tZ0',
                  about:
                  'ولأنها لن تعود إلا بسواعدنا \n أخبار مدينة دوما وكل ماهو جديد ',
                  username: 'دوما نبض الحياة',
                  tele: 'https://t.me/duma1city',
                ),
              ),
              cards(
                'دليل مدينة دوما',
                'قناة',
                'images/hamzaDalel.jpg',
                UserPageCameraDouma(
                  image: 'images/hamzaDalel.jpg',
                  location: 'https://www.facebook.com/profile.php?id=61552002202919&mibextid=ZbWKwL',
                  about:
                  'خدمية - تسويقية - مدينة دوما',
                  username: 'دليل مدينة دوما',
                  tele: 'https://t.me/DalelDouma',
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
