import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hotel extends StatefulWidget {
  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<Hotel>
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
        title: Text('الفنادق'),
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
                'فندق قصر الفارس',
                'في دمشق',
                'images/hotel1.jpg',
                UserPageCamera(
                  username: 'فندق قصر الفارس',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D9%82%D8%B5%D8%B1+%D8%A7%D9%84%D9%81%D8%A7%D8%B1%D8%B3%E2%80%AD/@33.5225578,36.3473442,12.26z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e72fc7244e4d:0xa85ae7d14e521e4f!8m2!3d33.517267!4d36.2966745!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F1vn4k9fs?authuser=0&entry=ttu',
                  phone: '0112323302',
                  image: 'images/hotel1.jpg',
                ),
              ), // 0115897501
              cards(
                'فندق بيت الوالي',
                'في دمشق',
                'images/hotel2.jpg',
                UserPageCamera(
                  username: 'فندق بيت الوالي',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A8%D9%8A%D8%AA+%D8%A7%D9%84%D9%88%D8%A7%D9%84%D9%8A%E2%80%AD/@33.5116098,36.4414057,12z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e6da8e7538f5:0x805421b9c33e9b11!8m2!3d33.5116098!4d36.3141456!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F1v387l17?authuser=0&entry=ttu',
                  phone: '0115436666',
                  image: 'images/hotel2.jpg',
                ),
              ),
              cards(
                'دار الياسمين',
                'في دمشق',
                'images/hotel3.jpg',
                UserPageCamera(
                  username: 'دار الياسمين',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/Dar+Al+Yasmin+Hotel+-/@33.5116098,36.4414057,12z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e768d216b45d:0xff21aaff2c12df29!8m2!3d33.5119995!4d36.3160809!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F11h3hj747x?authuser=0&entry=ttu',
                  phone: '0955443380',
                  image: 'images/hotel3.jpg',
                ),
              ),
              cards(
                'فندق العامر',
                'في دمشق',
                'images/hotel4.jpg',
                UserPageCamera(
                  username: 'فندق العامر',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A7%D9%84%D8%B9%D8%A7%D9%85%D8%B1%E2%80%AD/@33.5074695,36.2991836,15.04z/data=!4m10!1m2!2m1!1z2KfZhNmB2YbYp9iv2YI!3m6!1s0x1518e0ca546ab3c1:0x1002e73a89164877!8m2!3d33.5094396!4d36.2872604!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F11r9py647?authuser=0&entry=ttu',
                  phone: '0112116600',
                  image: 'images/hotel4.jpg',
                ),
              ),
              cards(
                'فندق بوابة الشرق',
                'في دمشق',
                'images/hotel5.jpg',
                UserPageCamera(
                  username: 'فندق بوابة الشرق',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A8%D9%88%D8%A7%D8%A8%D8%A9+%D8%A7%D9%84%D8%B4%D8%B1%D9%82%E2%80%AD/@33.5155243,36.3152025,15z/data=!4m10!1m2!2m1!1z2KfZhNmB2YbYp9iv2YI!3m6!1s0x1518e72df8fdc999:0xd673dc50c0f707e5!8m2!3d33.5155243!4d36.2966905!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F1tfx_7rw?authuser=0&entry=ttu',
                  phone: '0112316224',
                  image: 'images/hotel5.jpg',
                ),
              ),
              cards(
                'فندق البتراء',
                'في دمشق',
                'images/hotel6.jpg',
                UserPageCamera(
                  username: 'فندق البتراء',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A7%D9%84%D8%A8%D8%AA%D8%B1%D8%A7%D8%A1%E2%80%AD/@33.5155243,36.3152025,15z/data=!4m10!1m2!2m1!1z2KfZhNmB2YbYp9iv2YI!3m6!1s0x1518e72e6863f411:0x913ba445d5526db8!8m2!3d33.5144299!4d36.2981921!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F113g1qssb?authuser=0&entry=ttu',
                  phone: '0112315914',
                  image: 'images/hotel6.jpg',
                ),
              ),
              cards(
                'فندق المدينة',
                'في دمشق',
                'images/hotel7.jpg',
                UserPageCamera(
                  username: 'فندق المدينة',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A7%D9%84%D9%85%D8%AF%D9%8A%D9%86%D8%A9%E2%80%AD/@33.5155243,36.3152025,15z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e7eb8244a46d:0x9524f8bef603cd4c!8m2!3d33.5129702!4d36.2938488!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F11f9xffp1y?authuser=0&entry=ttu',
                  phone: '0112219375',
                  image: 'images/hotel7.jpg',
                ),
              ),
              cards(
                'فندق الشام',
                'في دمشق',
                'images/hotel8.jpg',
                UserPageCamera(
                  username: 'فندق الشام',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A7%D9%84%D8%B4%D8%A7%D9%85%E2%80%AD/@33.5155243,36.3152025,15z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e731af5a6aff:0x6493a0bf6d4ca5bf!8m2!3d33.5168156!4d36.2933999!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F120vz9xd?authuser=0&entry=ttu',
                  phone: '0112232300',
                  image: 'images/hotel8.jpg',
                ),
              ),
              cards(
                'فندق الشيراتون',
                'في دمشق',
                'images/hotel9.jpg',
                UserPageCamera(
                  username: 'فندق الشيراتون',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%A7%D9%84%D8%B4%D9%8A%D8%B1%D8%A7%D8%AA%D9%88%D9%86%E2%80%AD/@33.5128479,36.2924995,15z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e0ad8b80b8c5:0xd7e484274f9754be!8m2!3d33.5128479!4d36.2734451!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F11g1xy9cjs?authuser=0&entry=ttu',
                  phone: '0112229300',
                  image: 'images/hotel9.jpg',
                ),
              ),
              cards(
                'فندق داما روز',
                'في دمشق',
                'images/hotel10.jpg',
                UserPageCamera(
                  username: 'فندق داما روز',
                  about:
                  '',
                  location:
                  'https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%AF%D8%A7%D9%85%D8%A7+%D8%B1%D9%88%D8%B2%E2%80%AD/@33.5128479,36.2924995,15z/data=!4m11!1m3!2m2!1z2KfZhNmB2YbYp9iv2YI!6e3!3m6!1s0x1518e7355fec23c1:0x3f951decdbfa1342!8m2!3d33.5141467!4d36.2846929!15sCg7Yp9mE2YHZhtin2K_ZgpIBBWhvdGVs4AEA!16s%2Fg%2F1hc15fnml?authuser=0&entry=ttu',
                  phone: '0112229200',
                  image: 'images/hotel10.jpg',
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
