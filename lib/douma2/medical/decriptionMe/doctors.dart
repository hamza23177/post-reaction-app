import 'package:untitled1/douma2/component/painer.dart';
import 'package:untitled1/douma2/information/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user_Medical.dart';

class Doctors extends StatefulWidget {
  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> with SingleTickerProviderStateMixin {
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
        title: Text('الأطباء'),
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
                'سليمان أمين',
                'جراحة عامة',
                Icons.person,
                UserPage(
                  username: 'سليمان أمين',
                  about:
                      'اختصاصي في الجراحة العامة والتنظيرية \n أرقام أخرى للتواصل: 0944939997 ',
                  phoneNumber: '0944343472',
                  location:
                      'https://www.google.com/maps/@33.5722018,36.3928443,21z?entry=ttu',
                ),
              ),
              cards(
                'خالد الحنش',
                'عظمية',
                Icons.person,
                UserPage(
                  username: 'خالد الحنش',
                  about: 'جراحة - عظمية',
                  phoneNumber: '0933449005',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'زياد عبيد',
                'عظمية',
                Icons.person,
                UserPage(
                  username: 'زياد عبيد',
                  about:
                      'جراحة عظمية - معالجة كسور - خلوع - الام المفاصل والعمود الفقري \n أرقام أخرى للتواصل: 0962913383 ',
                  phoneNumber: '0958492708',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'عبير حوى',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'عبير حوى',
                  about:
                      'اختصاصية بالتوليد وأمراض النساء وجراحتها ورعاية الحوامل و معالجة العقم والكشف المبكر عن السرطان \n أرقام أخرى: 0981312175 ',
                  phoneNumber: '0968661957',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'باسل عيون',
                'أسنان',
                Icons.person,
                UserPage(
                  username: 'باسل عيون',
                  about:
                      'اختصاصي بأمراض الفم وجراحة الأسنان - تيجان وجسور - حشوات ضوئية',
                  phoneNumber: '0935836081',
                  location:
                      'https://www.google.com/maps/place/%D8%AF%D9%88%D9%85%D8%A7+%D8%B4%D8%A7%D8%B1%D8%B9+%D8%A7%D9%84%D8%AC%D9%84%D8%A7%D8%A1%E2%80%AD/@33.5708685,36.3996266,19.08z/data=!4m6!3m5!1s0x1518ef6bf5f18517:0x55e5d3317c75e814!8m2!3d33.5710287!4d36.3983317!16s%2Fg%2F11rzql51zt?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'مالك النجار',
                'أسنان',
                Icons.person,
                UserPage(
                  username: 'مالك النجار',
                  about:
                      'اختصاصي في طب الأسنان وجراحتها\n أرقام أخرى للتواصل: 0987007648',
                  phoneNumber: '0949233582',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B7%D8%B9%D9%85+%D8%A5%D9%86%D8%AC%D9%88%D9%8A%E2%80%AD/@33.5704319,36.3975365,19.96z/data=!4m6!3m5!1s0x1518ef882e765b4d:0xcb577fd0a861e40c!8m2!3d33.571028!4d36.3972857!16s%2Fg%2F11nxvg_5r3?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'يوسف هارون',
                'عصبية',
                Icons.person,
                UserPage(
                  username: 'يوسف هارون',
                  about: 'عصبية - تخطيط أعصاب - تخطيط دماغ - الأمراض العصبية',
                  phoneNumber: '0988310161',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'عبد الله زارع',
                'أذن أنف حنجرة',
                Icons.person,
                UserPage(
                  username: 'عبد الله زارع',
                  about: 'جراحة أذن - أنف - حنجرة - علاج السرطانات بالطب البديل \n أرقام أخرى للتواصل: 0115710580 ',
                  phoneNumber: '0933977185',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%A4%D8%B3%D8%B3%D8%A9+%D8%A7%D8%A8%D9%88+%D8%B9%D9%85%D8%A7%D8%AF+%D8%A8%D8%AF%D8%B1%D8%A7%D9%86+(%D9%84%D8%AA%D8%AC%D8%A7%D8%B1%D8%A9+%D8%AC%D9%85%D9%8A%D8%B9+%D8%A7%D9%86%D9%88%D8%A7%D8%B9+%D8%A7%D9%84%D9%81%D8%B1%D9%88%D8%AC)%E2%80%AD/@33.5707855,36.4014395,21z/data=!4m6!3m5!1s0x1518ef382ca5f189:0xe7fd1b4145bd41dd!8m2!3d33.5707369!4d36.401395!16s%2Fg%2F11hdz7w_lk?entry=ttu',
                ),
              ),
              cards(
                'محمد عيون',
                'عظمية',
                Icons.person,
                UserPage(
                  username: 'محمد عيون',
                  about: 'عظمية',
                  phoneNumber: '0993134881',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'عبد الله الطباخ',
                'جراحة عامة',
                Icons.person,
                UserPage(
                  username: 'عبد الله الطباخ',
                  about: 'جراحة عامة \n أرقام أخرى للتواصل: 0934110803 ',
                  phoneNumber: '0955579830',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ضياء الشيخ بكري',
                'اذنية',
                Icons.person,
                UserPage(
                  username: 'ضياء الشيخ بكري',
                  about: 'أذن - أنف - حنجرة',
                  phoneNumber: '0932805944',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'محمود قطيش',
                'قلبية',
                Icons.person,
                UserPage(
                  username: 'محمود قطيش',
                  about: 'قلبية',
                  phoneNumber: '0938026014',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'خالد المحشي',
                'أذنية',
                Icons.person,
                UserPage(
                  username: 'خالد المحشي',
                  about: 'أذن - أنف - حنجرة \n أرقام أخرى للتواصل: 0956717202 ',
                  phoneNumber: '0932332442',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'خالد موسى',
                'جراحى عامة',
                Icons.person,
                UserPage(
                  username: 'خالد موسى',
                  about: 'جراحة عامة',
                  phoneNumber: '0944430494',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'طارق دورو',
                'عينية',
                Icons.person,
                UserPage(
                  username: 'طارق دورو',
                  about: 'عينية',
                  phoneNumber: '0988430928',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'هنادي عباس',
                'مخبر',
                Icons.person,
                UserPage(
                  username: 'هنادي عباس',
                  about:
                      'مخبر الدكتورة هنادي عباس - أخصائية بالتشخيص المخبري - متعاقد مع جميع شركات التأمين - سحب دم منزلي \n أرقام أخرى للتواصل: 0115711026 - 0992912115 ',
                  phoneNumber: '0933544692',
                  location:
                      'https://www.google.com/maps/dir/33.5694064,36.401125/33.5692577,36.4010911/@33.5693914,36.401196,19.44z?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'ممتاز الحنش',
                'عظمية',
                Icons.person,
                UserPage(
                  username: 'ممتاز الحنش',
                  about: 'عظمية',
                  phoneNumber: '0944969688',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أبو خالد',
                'أشعة',
                Icons.person,
                UserPage(
                  username: 'أبو خالد',
                  about: 'تصوير أشعة \n أرقام أخرى للتواصل: 0933969146 ',
                  phoneNumber: '0940075194',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'محمود الساعور',
                'بولية',
                Icons.person,
                UserPage(
                  username: 'محمود الساعور',
                  about: 'بولية - داخلية',
                  phoneNumber: '0999215065',
                  location:
                      'https://www.google.com/maps/place/%D8%B3%D8%A7%D8%AD%D8%A9+%D8%A7%D9%84%D8%BA%D9%86%D9%85%E2%80%AD/@33.5692164,36.4043737,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef24b2f4d135:0x982f11540411ffef!8m2!3d33.5692164!4d36.4017988!16s%2Fg%2F11m9nvnvm7?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أحمد محرز',
                'جراحة عصبية',
                Icons.person,
                UserPage(
                  username: 'أحمد محرز',
                  about: 'جراحة عصبية',
                  phoneNumber: '0956798213',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'إنعام البشير',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'إنعام البشير',
                  about: 'نسائية',
                  phoneNumber: '0933502944',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'فاطمة الخنشور',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'فاطمة الخنشور',
                  about: 'نسائية \n أرقام أخرى للتواصل: 09439085880',
                  phoneNumber: '0943968461',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قمر المدور',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'قمر المدور',
                  about: 'نسائية',
                  phoneNumber: '0981733044',
                  location:
                      'https://www.google.com/maps/place/%D8%B9%D9%8A%D8%A7%D8%AF%D8%A9+%D8%AF%D9%82%D9%85%D8%B1+%D8%A7%D9%84%D9%85%D8%AF%D9%88%D8%B1%E2%80%AD/@33.5705741,36.396667,20.18z/data=!4m14!1m7!3m6!1s0x1518efb00f9886df:0xbbbd8620ae51e1e3!2z2YXZg9iq2KjYqSDYpdi02KjZitmE2YrYpw!8m2!3d33.5687754!4d36.3964954!16s%2Fg%2F11qg0w_8w5!3m5!1s0x1518ef350ed7c171:0x7c215f13867efcfe!8m2!3d33.5706711!4d36.3964262!16s%2Fg%2F11rptrqz52?entry=ttu',
                ),
              ),
              cards(
                'رانيا الجمل',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'رانيا الجمل',
                  about: 'نسائية',
                  phoneNumber: '0955305290',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'فاطمة الطيب',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'فاطمة الطيب',
                  about: 'نسائية \n أرقام أخرى للتواصل: 0944521352',
                  phoneNumber: '0934861721',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'هيفاء محي الدين',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'هيفاء محي الدين',
                  about: 'نسائية',
                  phoneNumber: '0937826053',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'سليم صعب',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'سليم صعب',
                  about: 'نسائية',
                  phoneNumber: '0997308189',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'بشار النوفي',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'بشار النوفي',
                  about: 'نسائية',
                  phoneNumber: '0988689955',
                  location:
                      'https://www.google.com/maps/place/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89+%D8%AD%D9%85%D8%AF%D8%A7%D9%86%E2%80%AD/@33.5707736,36.4040747,17z/data=!4m14!1m7!3m6!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!2z2YXYs9iq2LTZgdmJINit2YXYr9in2YY!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x!3m5!1s0x1518ef96c53a4c25:0xb0a1bb1ce4222807!8m2!3d33.5707737!4d36.3992038!16s%2Fg%2F11h9k77h1x?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أحمد الكردي',
                'إسعاف',
                Icons.person,
                UserPage(
                  username: 'أحمد الكردي',
                  about: 'إسعاف',
                  phoneNumber: '0933834752',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أكرم كعكة',
                'أطفال',
                Icons.person,
                UserPage(
                  username: 'أكرم كعكة',
                  about: 'أطفال',
                  phoneNumber: '0932791692',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'إسلام لبش',
                'عينية',
                Icons.person,
                UserPage(
                  username: 'إسلام لبش',
                  about: 'عينية',
                  phoneNumber: '0988058788',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أمل جمعه',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'أمل جمعه',
                  about: 'نسائية',
                  phoneNumber: '0933603688',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'أحمد عريضة',
                'عينية',
                Icons.person,
                UserPage(
                  username: 'أحمد عريضة',
                  about: 'عينية',
                  phoneNumber: '0932591329',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'حازم عربابي',
                'جراحة بولية',
                Icons.person,
                UserPage(
                  username: 'حازم عرابي',
                  about: 'جراحة بولية',
                  phoneNumber: '0949086650',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'خالد الطبجي',
                'جراحة بولية',
                Icons.person,
                UserPage(
                  username: 'خالد الطبجي',
                  about: 'جراحة بولية',
                  phoneNumber: '0999376722',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'رانيا الشيخة',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'رانيا الشيخة',
                  about: 'نسائية',
                  phoneNumber: '0996567731',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'عمار حمزة',
                'عينية',
                Icons.person,
                UserPage(
                  username: 'عمار حمزة',
                  about: 'عينية',
                  phoneNumber: '0991448318',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'فاطمة نعيسة',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'فاطمة نعيسة',
                  about: 'نسائية',
                  phoneNumber: '0991521219',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'قصي الشيخ بكري',
                'جراحة بولية',
                Icons.person,
                UserPage(
                  username: 'قصي الشيخ بكري',
                  about: 'جراحة بولية',
                  phoneNumber: '0992974542',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'محمود حمود',
                'جراحة أوعية',
                Icons.person,
                UserPage(
                  username: 'محمود حمود',
                  about: 'جراحة أوعية',
                  phoneNumber: '0932601097',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'محمود الشعار',
                'عينية',
                Icons.person,
                UserPage(
                  username: 'محمود الشعار',
                  about: 'عينية',
                  phoneNumber: '0949256674',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'محمد عيد كوكه',
                'أذن - أنف - حنجرة',
                Icons.person,
                UserPage(
                  username: 'محمد عيد كوكه',
                  about: 'أذن - أنف - حنجرة',
                  phoneNumber: '0944217894',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'نظير محي الدين',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'نظير محي الدين',
                  about: 'نسائية',
                  phoneNumber: '0954416865',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'نادين الورار',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'نادين الورار',
                  about: 'نسائية',
                  phoneNumber: '0934173159',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'هيفاء محي الدين',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'هيفاء محي الدين',
                  about: 'نسائية',
                  phoneNumber: '0937826053',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'هبة وهبة',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'هبة وهبة',
                  about: 'نسائية',
                  phoneNumber: '0947316582',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
                ),
              ),
              cards(
                'هناء سريول',
                'نسائية',
                Icons.person,
                UserPage(
                  username: 'هناء سريول',
                  about: 'نسائية',
                  phoneNumber: '0937587484',
                  location:
                  'https://www.google.com/maps/place/%D9%85%D8%B4%D9%81%D9%89+%D8%A7%D9%84%D9%86%D9%88%D8%B1%E2%80%AD/@33.5637314,36.3923688,17z/data=!3m1!4b1!4m6!3m5!1s0x1518ef79c86d8abd:0xb09fa3307fc95ef!8m2!3d33.5637314!4d36.3897939!16s%2Fg%2F11cs6kzn36?authuser=0&entry=ttu',
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

                    // fit: BoxFit.cover,
                    // width: _w / 2.36,
                    // height: _w / 2.6
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
