import 'dart:async';
import 'package:flutter/material.dart';

class NewsSlider extends StatefulWidget {
  @override
  _NewsSliderState createState() => _NewsSliderState();
}

class _NewsSliderState extends State<NewsSlider> {
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // تبديل الصفحات كل 2 ثواني
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = _pageController.page!.round() + 1;
        if (nextPage >= 6) {
          nextPage = 0; // العودة للصفحة الأولى إذا وصلنا للنهاية
        }
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16, left: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.38,
      child: PageView(
        controller: _pageController,
        children: <Widget>[
          NewsItem(imageUrl: 'assets/programming.jpeg'),
          NewsItem(imageUrl: 'assets/video.jpg'),
          NewsItem(imageUrl: 'assets/digital.jpg'),
          NewsItem(imageUrl: 'assets/graphicDesigne.jpg'),
          NewsItem(imageUrl: 'assets/Ads.jpg'),
          NewsItem(imageUrl: 'assets/ican2.png'),
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String imageUrl;

  NewsItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover, // يغطي الصورة كامل المساحة المتاحة
        ),
      ),
    );
  }
}
