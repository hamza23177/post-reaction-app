import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:untitled1/douma2/information/userPhone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Seheah extends StatefulWidget {
  @override
  _SeheahState createState() => _SeheahState();
}

class _SeheahState extends State<Seheah> with SingleTickerProviderStateMixin {
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
        title: Text('معلم صحية'),
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
                'أبو راتب المليح',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو راتب المليح',
                  about:
                  'معلم تمديدات صحية صناعي ومنزلي - فلترة مسابح \n أرقام أخرى للتواصل: 0981588791 ',
                  phoneNumber: '0947085055',
                ),
              ),
              cards(
                'أبو محمد الصوفي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمد الصوفي',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0934038614',
                ),
              ),
              cards(
                'أبو غسان أبو عيشة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو غسان أبو عيشة',
                  about:
                  'معلم تمديدات صحية صناعي ومنزلي - تمديد شلرات تبريد مكنات \n أرقام أخرى للتواصل: 0952780130 ',
                  phoneNumber: '0952780130',
                ),
              ),

              cards(
                'أبو أحمد الزهر',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أحمد الزهر',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0968020790',
                ),
              ),
              cards(
                'أبو زياد قمحة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو زياد قمحة',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0956793479',
                ),
              ),
              cards(
                'أبو أكرم طه',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أكرم طه',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0935260068',
                ),
              ),
              cards(
                'أبو أكرم السليك',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أكرم السليك',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0991724899',
                ),
              ),
              cards(
                'أبو محمد الدرة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمد الدرة',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0936978437',
                ),
              ),
              cards(
                'أبو لؤي جعفر',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو لؤي جعفر',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0945430109',
                ),
              ),
              cards(
                'أبو كاسم الحلبوني',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو كاسم الحلبوني',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0937905011',
                ),
              ),
              cards(
                'أبو محمود السيد',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمود السيد',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0954490563',
                ),
              ),
              cards(
                'أبو صبحي الصوفي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو صبحي الصوفي',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0932988510',
                ),
              ),
              cards(
                'أبو عمار الشامي',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عمار الشامي',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0988762897',
                ),
              ),
              cards(
                'أبو بشار كريم',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو بشار كريم',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0930285633',
                ),
              ),
              cards(
                'أبو راتب دلوان',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو راتب دلوان',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0937957601',
                ),
              ),
              cards(
                'أبو زهير بكار',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو زهير بكار',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0992338131',
                ),
              ),
              cards(
                'أبو محمود طه',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمود طه',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0981501902',
                ),
              ),
              cards(
                'شيخ إبراهيم',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو عمر الشيخ ابراهيم',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0949758296',
                ),
              ),
              cards(
                'شيخ الضيعة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو محمد شيخ الضيعة',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0958727452',
                ),
              ),
              cards(
                'أبو أكرم الأجوة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أكرم الأجوة',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0933591960',
                ),
              ),
              cards(
                'أبو أحمد حيلاني',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أحمد حيلاني',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0998403427',
                ),
              ),
              cards(
                'أبو أحمد شهاب',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو أحمد شهاب',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0940741885',
                ),
              ),
              cards(
                'أبو جابر الدرة',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو جابر الدرة',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0935195122',
                ),
              ),
              cards(
                'أبو خالد الزهر',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو خالد الزهر',
                  about:
                  'معلم تمديدات صحية',
                  phoneNumber: '0953358418',
                ),
              ),
              cards(
                'أبو هيثم رسلان',
                'في دوما',
                Icons.person,
                UserPagePhone(
                  username: 'أبو هيثم رسلان',
                  about:
                  'معلم تمديدات صحية وكهربائية',
                  phoneNumber: '0959170510',
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
