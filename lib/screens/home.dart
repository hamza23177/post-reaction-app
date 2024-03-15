import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/screens/post_screen.dart';
import 'package:untitled1/screens/profile.dart';
import 'package:untitled1/services/user_services.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'post_form.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          elevation: 0,
          title: Text('منشورات'),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Color(0xffF57752),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                logout().then((value) => {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => Login()),
                          (route) => false)
                    });
              },
            )
          ],
        ),
        body: currentIndex == 0
            ? Stack(children: [
                PostScreen(),
                CustomPaint(
                  painter: MyPainter(),
                  child: Container(height: 0),
                ),
              ])
            : Stack(children: [Profile(),
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffF57752),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PostForm(
                      title: 'إضافة منشور جديد',
                    )));
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: BottomAppBar(
        //   notchMargin: 5,
        //   elevation: 10,
        //   clipBehavior: Clip.antiAlias,
        //   shape: CircularNotchedRectangle(),
        //   child: BottomNavigationBar(
        //     items: [
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        //       BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        //     ],
        //     currentIndex: currentIndex,
        //     onTap: (val) {
        //       setState(() {
        //         currentIndex = val;
        //       });
        //     },
        //   ),
        // ),
      ),
    );
  }
}
