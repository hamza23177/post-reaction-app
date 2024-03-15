import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/siteImporantUser.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImportantSite extends StatefulWidget {
  @override
  _ImportantSiteState createState() => _ImportantSiteState();
}

class _ImportantSiteState extends State<ImportantSite> with SingleTickerProviderStateMixin {
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
        title: Text('المواقع الهامة'),
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
                'دوار البلدية',
                'في دوما',
                'images/Doma-8-.jpg',
                UserSiteCamera(
                  image:'images/Doma-8-.jpg',
                  username: 'دوار البلدية',
                  about:
                  'يوجد بالقرب من دوار البلدية: بلدية دوما - منتزه السرايا - مركز هاتف دوما - القصر العدلي - محكمة دوما - المجمع القضائي - مخاتير دوما - شعبة الحزب - المختار عبد اللطيف طالب',
                  location: 'https://www.google.com/maps/place/%D8%AF%D9%88%D8%A7%D8%B1+%D8%A8%D9%84%D8%AF%D9%8A%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5714455,36.3962404,18z/data=!4m10!1m2!2m1!1z2K_ZiNmF2Kcg2K_ZiNin2LEg2KfZhNio2YTYr9mK2Kk!3m6!1s0x1518efc6fe621bb9:0xf6018de75ea1eda7!8m2!3d33.5712265!4d36.3951758!15sCiDYr9mI2YXYpyDYr9mI2KfYsSDYp9mE2KjZhNiv2YrYqZIBE2hpc3RvcmljYWxfbGFuZG1hcmvgAQA!16s%2Fg%2F11jztfsslp?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'شارع الجلاء',
                'في دوما',
                'images/shareAljala.jpg',
                UserSiteCamera(
                  image:'images/shareAljala.jpg',
                  username: 'شارع الجلاء',
                  about:
                  ' سوق كبير للألبسة والأحذية والأقمشة وغيرها - سرافيس دوما - ينتهي بحديقة الجلاء ',
                  location: 'https://www.google.com/maps/place/%D8%AF%D9%88%D9%85%D8%A7+%D8%B4%D8%A7%D8%B1%D8%B9+%D8%A7%D9%84%D8%AC%D9%84%D8%A7%D8%A1%E2%80%AD/@33.5710287,36.4009066,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef6bf5f18517:0x55e5d3317c75e814!8m2!3d33.5710287!4d36.3983317!16s%2Fg%2F11rzql51zt?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'المالية',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'مديرية المالية',
                  about:
                  ' جميع الخدمات المالية',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%AF%D9%8A%D8%B1%D9%8A%D8%A9+%D9%85%D8%A7%D9%84%D9%8A%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5710287,36.4009066,17z/data=!4m14!1m7!3m6!1s0x1518ef6bf5f18517:0x55e5d3317c75e814!2z2K_ZiNmF2Kcg2LTYp9ix2Lkg2KfZhNis2YTYp9ih!8m2!3d33.5710287!4d36.3983317!16s%2Fg%2F11rzql51zt!3m5!1s0x1518efa260f9775d:0xc63bea2c1779e27d!8m2!3d33.571829!4d36.4010686!16s%2Fg%2F1tf5571b?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'المسجد الكبير',
                'في دوما',
                'images/mousq.jpg',
                UserSiteCamera(
                  image:'images/mousq.jpg',
                  username: 'المسجد الكبير',
                  about:
                  'مركز مدينة دوما',
                  location: 'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%B3%D8%AC%D8%AF+%D8%A7%D9%84%D9%83%D8%A8%D9%8A%D8%B1%E2%80%AD/@33.5713731,36.4035523,17z/data=!3m1!4b1!4m6!3m5!1s0x1518efa27cb343d3:0xbadaf0a20d04bd11!8m2!3d33.5713731!4d36.4009774!16s%2Fg%2F1vl5d3q1?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'مقبرة دوما',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'مقبرة دوما',
                  about:
                  'موقع هام',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%82%D8%A8%D8%B1%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5799666,36.4136377,15z/data=!4m10!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m6!1s0x1518efa40a26875b:0xfd31a50f76456110!8m2!3d33.5763499!4d36.3994727!15sChfYr9mI2YXYpyDYp9mE2YXZgtio2LHYqZIBCGNlbWV0ZXJ54AEA!16s%2Fg%2F11xgxr_mh?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الحجارية',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'الحجارية',
                  about:
                  ' حي شعبي',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%82%D8%A8%D8%B1%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5799666,36.4136377,15z/data=!4m10!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m6!1s0x1518efa40a26875b:0xfd31a50f76456110!8m2!3d33.5763499!4d36.3994727!15sChfYr9mI2YXYpyDYp9mE2YXZgtio2LHYqZIBCGNlbWV0ZXJ54AEA!16s%2Fg%2F11xgxr_mh?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ساحة الشهداء',
                'في دوما',
                'images/sahwAlshohada.jpg',
                UserSiteCamera(
                  image:'images/sahwAlshohada.jpg',
                  username: 'ساحة الشهداء',
                  about:
                  'موقع هام',
                  location: 'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%B4%D9%87%D8%AF%D8%A7%D8%A1%E2%80%AD/@33.5730123,36.4134895,16z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m5!1s0x1518efbb65b7d10f:0xa221bbc1404a6466!8m2!3d33.5744929!4d36.405741!16s%2Fg%2F1tg7pc2z?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الجرة',
                'في دوما',
                'images/jarah.jpg',
                UserSiteCamera(
                  image:'images/jarah.jpg',
                  username: 'الجرة',
                  about:
                  ' مدخل مدينة دوما',
                  location: 'https://www.google.com/maps/place/%D8%AC%D8%B1%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5639906,36.3937821,17.04z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m5!1s0x1518ef59d4a9ba3b:0xfb23664c2f88a73f!8m2!3d33.5618529!4d36.388955!16s%2Fg%2F11s38hhxy5?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'جامع التوحيد',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'جامع التوحيد',
                  about:
                  ' موقع هام',
                  location: 'https://www.google.com/maps/place/%D8%AC%D8%A7%D9%85%D8%B9+%D8%A7%D9%84%D8%AA%D9%88%D8%AD%D9%8A%D8%AF%E2%80%AD/@33.5658233,36.3963567,17.04z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m5!1s0x1518ef77ed9df429:0xb8d5e14f2beaf28c!8m2!3d33.5647296!4d36.3920389!16s%2Fg%2F11xr_8wnf?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'شارع القوتلي',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'شارع القوتلي',
                  about:
                  ' أغلب  محلات المأكولات - محلات الموبايلات - محلات اللحم وغيرها ',
                  location: 'https://www.google.com/maps/place/%D9%82%D9%88%D8%AA%D9%84%D9%8A%E2%80%AD/@33.565382,36.4006936,17z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2KfZhNmF2YLYqNix2Kk!3m5!1s0x1518ef3c7cb0e3e5:0x5d36db4703defd08!8m2!3d33.5653821!4d36.3960658!16s%2Fg%2F11rvltczfz?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الكورنيش',
                'في دوما',
                'images/streeet.jpg',
                UserSiteCamera(
                  image:'images/streeet.jpg',
                  username: 'شارع الكورنيش',
                  about:
                  ' الطريق الواصل بين دوار بلدية والجرة',
                  location: 'https://www.google.com/maps/place/%D9%85%D8%B7%D8%B9%D9%85+%D8%A7%D9%84%D9%83%D9%88%D8%B1%D9%86%D9%8A%D8%B4%E2%80%AD/@33.5696416,36.3958715,17.56z/data=!4m10!1m2!2m1!1z2K_ZiNmF2Kcg2LTYp9ix2Lkg2KfZhNmD2YjYsdmG2YrYtA!3m6!1s0x1518efd504fab5fd:0x3ec2d868822cfa2f!8m2!3d33.5703943!4d36.3947611!15sCiLYr9mI2YXYpyDYtNin2LHYuSDYp9mE2YPZiNix2YbZiti0WiQiItiv2YjZhdinINi02KfYsdi5INin2YTZg9mI2LHZhtmK2LSSAQpyZXN0YXVyYW50mgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVVJUTFdSWGRrdDNFQUXgAQA!16s%2Fg%2F11jnnk964j?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'سوق الهال',
                'في دوما',
                'images/sogAlhal.jpg',
                UserSiteCamera(
                  image:'images/sogAlhal.jpg',
                  username: 'سوق الهال',
                  about:
                  'محلات الجملة لبيع الخضار والفواكه',
                  location: 'https://www.google.com/maps/place/%D8%B3%D9%88%D9%82+%D8%A7%D9%84%D9%87%D8%A7%D9%84+%D8%A7%D9%84%D9%85%D8%B1%D9%83%D8%B2%D9%8A+%D8%A8%D8%AF%D9%85%D8%B4%D9%82%E2%80%AD/@33.5684768,36.4096337,17z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2LTYp9ix2Lkg2KfZhNmD2YjYsdmG2YrYtA!3m5!1s0x1518efa4b972a64b:0x5a3c82a78fc4b657!8m2!3d33.5684158!4d36.4063939!16s%2Fg%2F11q4bw9p_l?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قسم الكهرباء',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'قسم الكهرباء',
                  about:
                  'موقع هام',
                  location: 'https://www.google.com/maps/place/%D9%82%D8%B3%D9%85+%D9%83%D9%87%D8%B1%D8%A8%D8%A7%D8%A1+%D9%85%D8%AF%D9%8A%D9%86%D8%A9+%D8%AF%D9%88%D9%85%D8%A7%E2%80%AD/@33.5742247,36.4174172,18z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2LTYp9ix2Lkg2KfZhNmD2YjYsdmG2YrYtA!3m5!1s0x1518efa2a693d77d:0x54bbd8a79966184f!8m2!3d33.5742244!4d36.4150834!16s%2Fg%2F11rtr74jrv?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'حديقة الجلاء',
                'في دوما',
                'images/gardenGala.jpg',
                UserSiteCamera(
                  image:'images/gardenGala.jpg',
                  username: 'حديقة الجلاء',
                  about:
                  'نهاية شارع الجلاء - حديقة ألعاب للأطفال - تنزه',
                  location: 'https://www.google.com/maps/place/%D8%AD%D8%AF%D9%8A%D9%82%D8%A9+%D8%A7%D9%84%D8%AC%D9%84%D8%A7%D8%A1%E2%80%AD/@33.5718402,36.4149644,17.48z/data=!4m9!1m2!2m1!1z2K_ZiNmF2Kcg2LTYp9ix2Lkg2KfZhNmD2YjYsdmG2YrYtA!3m5!1s0x1518efb8b70c087d:0x5c6eb59aad3ff7d4!8m2!3d33.5718425!4d36.4136267!16s%2Fg%2F11r9497jn?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'شعبة التجنيد',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'شعبة التجنيد',
                  about:
                  'موقع هام',
                  location: 'https://www.google.com/maps/place/%D8%B5%D9%8A%D8%AF%D9%84%D9%8A%D8%A9+%D8%A7%D9%84%D8%B1%D8%A7%D8%B2%D9%8A%E2%80%AD/@33.5699208,36.3965665,20.51z/data=!4m15!1m8!3m7!1s0x1518ef84a8e817bb:0xaffd77b97246862b!2z2K_ZiNmF2KfYjCDYs9mI2LHZitin!3b1!8m2!3d33.5727724!4d36.4093761!16s%2Fm%2F02qgf3r!3m5!1s0x1518ef9f02e1e079:0x8a1fb81928e0c87f!8m2!3d33.5700477!4d36.3963494!16s%2Fg%2F11f040lps4?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'الملعب البلدي',
                'في دوما',
                'images/SiteUser.jpg',
                UserSiteCamera(
                  image:'images/SiteUser.jpg',
                  username: 'ملعب دوما البلدي',
                  about:
                  'ملعب كرة قدم',
                  location: 'https://www.google.com/maps/place/%D9%85%D9%84%D8%B9%D8%A8+%D8%AF%D9%88%D9%85%D8%A7+%D8%A7%D9%84%D8%AF%D9%88%D9%84%D9%8A%E2%80%AD/@33.5733783,36.3920489,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef7884e21b6b:0x94d63623f69e8577!8m2!3d33.5733783!4d36.389474!16s%2Fg%2F11q4bwgy1p?authuser=0&entry=ttu',
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
