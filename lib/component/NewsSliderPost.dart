import 'dart:async';
import 'package:flutter/material.dart';

class NewsSliderPost extends StatefulWidget {
  @override
  _NewsSliderPostState createState() => _NewsSliderPostState();
}

class _NewsSliderPostState extends State<NewsSliderPost> {
  final PageController _pageController = PageController(initialPage: 1); // بدء من الخبر الأول (بعد النسخة المكررة)
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // تبديل الصفحات كل 2 ثواني
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = _pageController.page!.round() + 1;
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
        onPageChanged: (index) {
          // عند الوصول للنهاية أو البداية، الانتقال السلس للخبر المقابل
          if (index == 0) {
            Future.delayed(Duration(milliseconds: 400), () {
              _pageController.jumpToPage(5);
            });
          } else if (index == 6) {
            Future.delayed(Duration(milliseconds: 400), () {
              _pageController.jumpToPage(1);
            });
          }
        },
        children: <Widget>[
          NewsItem(news: 'News 6'), // نسخة مكررة للخبر الأخير
          NewsItem(news: 'News 1'),
          NewsItem(news: 'News 2'),
          NewsItem(news: 'News 3'),
          NewsItem(news: 'News 4'),
          NewsItem(news: 'News 5'),
          NewsItem(news: 'News 1'), // نسخة مكررة للخبر الأول
        ],
      ),
    );
  }
}

class NewsItem extends StatelessWidget {
  final String news;

  NewsItem({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Text(news), // هنا يمكنك تعديل لعرض الأخبار كما تشاء
        ),
      ),
    );
  }
}
