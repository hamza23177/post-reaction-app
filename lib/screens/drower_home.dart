
import 'package:untitled1/douma2/addUser/gategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/screens/profile.dart';
import 'package:untitled1/screens/youtube_screen.dart';
import 'home.dart';
import 'mazad_screen.dart';


class DrowerHome extends StatefulWidget {
  @override
  DrowerHomeState createState() => DrowerHomeState();
}

class DrowerHomeState extends State<DrowerHome> {
  var currentIndex = 0;

  final List<Widget> pages = [
    Home(),
    MazadScreen(),
    YoutubeScreen(),
    MyCustomUI(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width*0.8;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(20),
          height: screenWidth * .155,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  HapticFeedback.lightImpact();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  SizedBox(
                    width: screenWidth * .2125,
                    child: Center(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == currentIndex ? screenWidth * .12 : 0,
                        width: index == currentIndex ? screenWidth * .2125 : 0,
                        decoration: BoxDecoration(
                          color: index == currentIndex
                              ? Colors.blueAccent.withOpacity(.2)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * .2125,
                    alignment: Alignment.center,
                    child: Icon(
                      listOfIcons[index],
                      size: screenWidth * .076,
                      color: index == currentIndex
                          ? Color(0xffF57752)
                          : Colors.black26,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: pages[currentIndex],
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.image,
    Icons.ondemand_video_outlined,
    Icons.category_outlined,
    Icons.person,
  ];
}


