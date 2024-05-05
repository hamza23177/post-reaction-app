import 'dart:ui';
import 'package:untitled1/component/drower.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/douma2/addUser/gategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/models/api_response.dart';
import 'package:untitled1/models/user.dart';
import 'package:untitled1/screens/profile.dart';
import 'package:untitled1/screens/youtube_screen.dart';
import 'package:untitled1/services/user_services.dart';
import '../constant.dart';
import 'home.dart';
import 'login.dart';
import 'mazad_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

const _kPages = <String, IconData>{
  'دليل': Icons.explore,
  'منشورات': Icons.article,
  'فيديو': Icons.play_circle_fill,
  'مزاد': Icons.gavel,
  'الملف': Icons.person,
};

class DrowerHome extends StatefulWidget {
  @override
  _DrowerHomeState createState() => _DrowerHomeState();
}

class _DrowerHomeState extends State<DrowerHome> {
  User? user;
  TabStyle _tabStyle = TabStyle.reactCircle;
  int currentIndex1 = 0; // متغير لتتبع الصفحة الحالية
  String _currentTitle = 'دليل'; // متغير لتتبع العنوان الحالي
  late String name;
  late String phone;
  bool loading = true;

  final List<String> _titles = [
    'دليل',
    'منشورات',
    'فيديو',
    'مزاد',
    'الملف',
  ];

  // تعريف الصفحات التي تريد عرضها
  final List<Widget> _pages = [
    MyCustomUI(),
    Home(),
    YoutubeScreen(),
    MazadScreen(),
    Profile(),
  ];
  void getUser() async {
    ApiResponse response = await getUserDetail();
    if (response.error == null) {
      setState(() {
        user = response.data as User;
        loading = false;
        name= user!.name ?? '';
        name = user!.phone ?? '';
      });
    } else if (response.error == unauthorized) {
      logout().then((value) => {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Login()),
                (route) => false)
      });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }
  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(user?.name ?? '',style: TextStyle(color: Colors.white),),
      accountEmail: Text(user?.phone ?? ''),
      currentAccountPicture: GestureDetector(
        onTap: () => showFullImage(context, user?.image ?? 'path_to_default_image'),
        child: CircleAvatar(
          backgroundImage: NetworkImage(user?.image ?? 'path_to_default_image'),
          radius: 40.0,
        ),
      ),
    );

    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: const Text('منشورات'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Home(),
          ),
          ),
        ),
        ListTile(
          title: const Text('فيديوهات'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => YoutubeScreen(),
          ),
          ),
        ),
        ListTile(
          title: const Text('مزاد'),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MazadScreen(),
          ),
          ),
        ),
        ListTile(
          title: const Text('الملف الشخصي'),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Profile(),
            ),
          ),
        ),
        ListTile(
          title: const Text('تسجيل خروج'),
          onTap: () {
            logout().then((value) => {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Login()),
                      (route) => false)
                });
          },
        ),
      ],
    );

    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: _pages.length, // تأكد من أن الطول يساوي عدد الصفحات
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(_currentTitle),
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Color(0xffF57752),
          ),
          drawer: loading
              ? Center(
            child: CircularProgressIndicator(
              color: Color(0xffF57752),
            ),
          )
              :Drawer(
            child: drawerItems,
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  // const Divider(),
                  Expanded(
                    // استخدام TabBarView لعرض الصفحات
                    child: TabBarView(
                      children:
                          _pages, // استخدام الصفحات هنا بدلاً من الأيقونات
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
          bottomNavigationBar: ConvexAppBar(
            style: _tabStyle,
            items: <TabItem>[
              for (final entry in _kPages.entries) TabItem(icon: entry.value),
            ],
            onTap: (int i) {
              setState(() {
                currentIndex1 = i; // تحديث الصفحة الحالية
                _currentTitle = _titles[i]; // تحديث العنوان الحالي
                // تحديث الـ DefaultTabController عند النقر على التبويب
                final controller = DefaultTabController.of(context);
                if (controller != null) controller.animateTo(i);
              });
            },
            backgroundColor: Color(0xffF57752),
          ),
        ),
      ),
    );
  }
}

// تأكد من تعريف الويدجتس MyCustomUI, Home, YoutubeScreen, MazadScreen, و Profile

// class DrowerHome extends StatefulWidget {
//   @override
//   DrowerHomeState createState() => DrowerHomeState();
// }
//
// class DrowerHomeState extends State<DrowerHome> with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _animation1;
//   late Animation<double> _animation2;
//   late Animation<double> _animation3;
//
//   bool _bool = true;
//
//   @override
//   void initState() {
//     super.initState();
//
//     _animationController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 600));
//
//     _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
//       parent: _animationController,
//       curve: Curves.easeOut,
//       reverseCurve: Curves.easeIn,
//     ))
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.dismissed) {
//           _bool = true;
//         }
//       });
//     _animation2 = Tween<double>(begin: 0, end: .3).animate(_animationController)
//       ..addListener(() {
//         setState(() {});
//       });
//     _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.fastLinearToSlowEaseIn,
//         reverseCurve: Curves.ease))
//       ..addListener(() {
//         setState(() {});
//       });
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   var currentIndex = 0;
//
//   final List<Widget> pages = [
//     MyCustomUI(),
//     Home(),
//     YoutubeScreen(),
//     MazadScreen(),
//     Profile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     double _width = MediaQuery.of(context).size.width;
//     double _height = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width * 0.8;
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           brightness: Brightness.dark,
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           leading: IconButton(
//             icon: Icon(Icons.menu_rounded),
//             splashColor: Colors.transparent,
//             onPressed: () {
//               if (_bool == true) {
//                 _animationController.forward();
//               } else {
//                 _animationController.reverse();
//               }
//               _bool = false;
//             },
//           ),
//         ),
//         bottomNavigationBar: Container(
//           margin: EdgeInsets.all(20),
//           height: screenWidth * .155,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(.15),
//                 blurRadius: 30,
//                 offset: Offset(0, 10),
//               ),
//             ],
//             borderRadius: BorderRadius.circular(50),
//           ),
//           child: ListView.builder(
//             itemCount: 5,
//             scrollDirection: Axis.horizontal,
//             padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
//             itemBuilder: (context, index) => InkWell(
//               onTap: () {
//                 setState(() {
//                   currentIndex = index;
//                   HapticFeedback.lightImpact();
//                 });
//               },
//               splashColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               child: Stack(
//                 children: [
//                   SizedBox(
//                     width: screenWidth * .2125,
//                     child: Center(
//                       child: AnimatedContainer(
//                         duration: Duration(seconds: 1),
//                         curve: Curves.fastLinearToSlowEaseIn,
//                         height: index == currentIndex ? screenWidth * .12 : 0,
//                         width: index == currentIndex ? screenWidth * .2125 : 0,
//                         decoration: BoxDecoration(
//                           color: index == currentIndex
//                               ? Colors.blueAccent.withOpacity(.2)
//                               : Colors.transparent,
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: screenWidth * .2125,
//                     alignment: Alignment.center,
//                     child: Icon(
//                       listOfIcons[index],
//                       size: screenWidth * .076,
//                       color: index == currentIndex
//                           ? Color(0xffF57752)
//                           : Colors.black26,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         body: Stack(children: [
//           pages[currentIndex],
//           SizedBox(
//             height: _height,
//             width: _width,
//             child: null,
//           ),
//
//           // ALWAYS PLACE IT ON THE BOTTOM OF EVERY WIDGET...
//           CustomNavigationDrawer(),
//         ]),
//       ),
//     );
//   }
//
//   Widget CustomNavigationDrawer() {
//     double _height = MediaQuery.of(context).size.height;
//     double _width = MediaQuery.of(context).size.width;
//     return BackdropFilter(
//       filter: ImageFilter.blur(
//           sigmaY: _animation1.value, sigmaX: _animation1.value),
//       child: Container(
//         height: _bool ? 0 : _height,
//         width: _bool ? 0 : _width,
//         color: Colors.transparent,
//         child: Center(
//           child: Transform.scale(
//             scale: _animation3.value,
//             child: Container(
//               width: _width * .9,
//               height: _width * 1.3,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(_animation2.value),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.black12,
//                     radius: 35,
//                     child: Icon(
//                       Icons.person_outline_rounded,
//                       size: 30,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       MyTile(Icons.settings_outlined, 'Settings', () {
//                         HapticFeedback.lightImpact();
//                         // Fluttertoast.showToast(
//                         //   msg: 'Button pressed',
//                         // );
//                       }),
//                       MyTile(Icons.info_outline_rounded, 'About', () {
//                         HapticFeedback.lightImpact();
//                         // Fluttertoast.showToast(
//                         //   msg: 'Button pressed',
//                         // );
//                       }),
//                       MyTile(Icons.feedback_outlined, 'Feedback', () {
//                         HapticFeedback.lightImpact();
//                         // Fluttertoast.showToast(
//                         //   msg: 'Button pressed',
//                         // );
//                       }),
//                       MyTile(Icons.find_in_page_outlined, 'Privacy Policy', () {
//                         HapticFeedback.lightImpact();
//                         // Fluttertoast.showToast(
//                         //   msg: 'Button pressed',
//                         // );
//                       }),
//                     ],
//                   ),
//                   SizedBox(),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget MyTile(
//       IconData icon,
//       String title,
//       VoidCallback voidCallback,
//       ) {
//     return Column(
//       children: [
//         ListTile(
//           tileColor: Colors.black.withOpacity(.08),
//           leading: CircleAvatar(
//             backgroundColor: Colors.black12,
//             child: Icon(
//               icon,
//               color: Colors.white,
//             ),
//           ),
//           onTap: voidCallback,
//           title: Text(
//             title,
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1),
//           ),
//           trailing: Icon(
//             Icons.arrow_right,
//             color: Colors.white,
//           ),
//         ),
//         divider()
//       ],
//     );
//   }
//
//   Widget divider() {
//     return Container(
//       height: 5,
//       width: MediaQuery.of(context).size.width,
//     );
//   }
// //pages[currentIndex]
//   List<IconData> listOfIcons = [
//     Icons.category_outlined,
//     Icons.home_rounded,
//     Icons.ondemand_video_outlined,
//     Icons.money,
//     Icons.person,
//   ];
// }
