import 'package:untitled1/douma2/aqarat/aqarat_home.dart';
import 'package:untitled1/douma2/artist/artistHome.dart';
import 'package:untitled1/douma2/bread/breadHome.dart';
import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/descrCategor/description_page.dart';
import 'package:untitled1/douma2/eatResturant/eat_resturantHome.dart';
import 'package:untitled1/douma2/feolDouma/feolDoumaHome.dart';
import 'package:untitled1/douma2/foodStore/foodStoreHome.dart';
import 'package:untitled1/douma2/hand/handHome.dart';
import 'package:untitled1/douma2/importantSite/impotantHome.dart';
import 'package:untitled1/douma2/information/information_user.dart';
import 'package:untitled1/douma2/information/userDouma.dart';
import 'package:untitled1/douma2/institute/institute_school.dart';
import 'package:untitled1/douma2/pagesDouma/pagesDoumaHome.dart';
import 'package:untitled1/douma2/salloon/salloonHome.dart';
import 'package:untitled1/douma2/song/songHome.dart';
import 'package:untitled1/douma2/trade/tradeHome.dart';
import 'package:untitled1/douma2/transporter/transportHome.dart';
import 'package:untitled1/douma2/travel/travel_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomUI extends StatefulWidget {
  @override
  _MyCustomUIState createState() => _MyCustomUIState();
}

class _MyCustomUIState extends State<MyCustomUI>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

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
        title: Text('دليل مدينة دوما'),
        centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        children: [
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              SizedBox(height: _w / 20),
              groupOfCards(
                'القسم الطبي',
                'في دوما',
                'images/hospital.jpg',
                DescriptionCategory(),
                'المدارس والمعاهد',
                'في دوما',
                'images/institute.jpg',
                InstituteAndSchool(),
              ),
              groupOfCards(
                'الأفراح والمناسبات',
                'في دوما',
                'images/song.jpg',
                SalloonAndHappy(),
                'المأكولات والمطاعم',
                'في دوما',
                'images/eat.jpg',
                EatAndResturant(),
              ),
              groupOfCards(
                  'المحلات التجارية',
                  'في دوما',
                  'images/eqiments.jpg',
                  TradeHome(),
                  'الحرف المهنية',
                  'في دوما',
                  'images/meal.jpg',
                  ArtistHome(),),
              groupOfCards(
                'عقارات وتعهدات',
                'في دوما',
                'images/house.jpg',
                AqaratAndTahahodat(),
                'جوازات سفر',
                'في دوما',
                'images/airport.jpg',
                TravelHome(),
              ),
              groupOfCards(
                'خدمات جامعية',
                'تنمية وتدريب',
                'images/university.jpg',
                Services(),
                'خدمات التوصيل',
                'في دوما',
                'images/taxi.jpg',
                Transporter(),
              ),
              groupOfCards(
                  'المتاجر الغذائية',
                  'في دوما',
                  'images/streEat.jpg',
                  FoodStore(),
                  'صالونات الحلاقة',
                  'في دوما',
                  'images/salloon.jpg',
                  Salloons(),),
              groupOfCards(
                'المواقع المهمة',
                'في دوما',
                'images/important.jpg',
                ImportantSite(),
                'صفحات دوما',
                'على الفيسبوك',
                'images/doumas.jpg',
                PagesDouma(),
              ),
              groupOfCards(
                'الأفران والمحابز',
                'في دوما',
                'images/bread.jpg',
                Breads(),
                'الكازيات والمحروقات',
                'في دوما',
                'images/feol.jpg',
                FeolDoumaHome(),
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
      String title2,
      String subtitle2,
      String image2,
      Widget route2) {
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, 0, _w / 20, _w / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          card(title1, subtitle1, image1, route1),
          card(title2, subtitle2, image2, route2),
        ],
      ),
    );
  }

  Widget card(String title, String subtitle, String image, Widget route) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).push(MyFadeRoute(route: route, page: route));
        },
        child: Container(
          width: _w / 2.36,
          height: _w / 1.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 50),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: _w / 2.36,
                height: _w / 2.6,
                decoration: BoxDecoration(
                  color: Color(0xff5C71F3),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                child: Image.asset(image,
                    fit: BoxFit.cover, width: _w / 2.36, height: _w / 2.6),
              ),
              Container(
                height: _w / 6,
                width: _w / 2.36,
                padding: EdgeInsets.symmetric(horizontal: _w / 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textScaleFactor: 1.4,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      subtitle,
                      textScaleFactor: 1,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(.7),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFadeRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  MyFadeRoute({required this.page, required this.route})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}

class RouteWhereYouGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text('EXAMPLE  PAGE',
            style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontWeight: FontWeight.w600,
                letterSpacing: 1)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black.withOpacity(.8),
          ),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
    );
  }
}
