import 'package:flutter/services.dart';
import 'package:untitled1/component/painter.dart';
import 'package:untitled1/screens/postMazad_form.dart';
import 'package:untitled1/screens/post_mazad.dart';
import 'package:untitled1/screens/profile.dart';
import 'package:flutter/material.dart';

class MazadScreen extends StatefulWidget {
  @override
  _MazadScreenState createState() => _MazadScreenState();
}

class _MazadScreenState extends State<MazadScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        // appBar: AppBar(
        //   elevation: 0,
        //   title: Text('مزادات دوما'),
        //   centerTitle: true,
        //   systemOverlayStyle: SystemUiOverlayStyle.light,
        //   backgroundColor: Color(0xffF57752),
        // ),
        body: currentIndex == 0
            ? Stack(children: [
          PostMazadScreen(),
          // CustomPaint(
          //   painter: MyPainter(),
          //   child: Container(height: 0),
          // ),
        ])
            : Stack(children: [
              Profile(),
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffF57752),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PostMazadForm(
                  title: 'إضافة مزاد جديد',
                )));
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
