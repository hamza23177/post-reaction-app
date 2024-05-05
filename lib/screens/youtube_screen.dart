import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/component/painter.dart';
import 'dart:convert';

import 'package:untitled1/screens/video_play_screen.dart';

class YoutubeScreen extends StatefulWidget {
  @override
  _YoutubeScreenState createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  final String apiKey = 'AIzaSyBJ4UwhIZlXusdnO2fR2deWpeo9HNtpndk';
  final String channelId = 'UCZo8ETW-vWJ-aAF6Ddt9H_Q';
  List videos = [];
  String channelTitle = 'فيديوهات دوما'; // اسم القناة
  String channelImage = 'images/Doma-8-.jpg'; // صورة القناة
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    fetchVideos();
  }

  fetchVideos() async {
    final url =
        'https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=$channelId&order=date&maxResults=20&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        videos = data['items'];
        _loading = _loading ? !_loading : _loading;
      });
    } else {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? Center(
        child: CircularProgressIndicator(
          color: Color(0xffF57752),
        )):
      Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffF57752),
      //   elevation: 0,
      //   title: Text(channelTitle),
      //   centerTitle: true,
      //   systemOverlayStyle: SystemUiOverlayStyle.light,
      // ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: videos.length,
            itemBuilder: (context, index) {
              final video = videos[index];
              return Card(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(
                              videoId: video['id']['videoId'],
                            ),
                          ),
                        );
                      },
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(
                          video['snippet']['thumbnails']['high']['url'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(video['snippet']['title']),
                      subtitle: Text(video['snippet']['description']),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(
                              videoId: video['id']['videoId'],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          // CustomPaint(
          //   painter: MyPainter(),
          //   child: Container(height: 0),
          // ),
        ],
      ),
    );
  }
}
