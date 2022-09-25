import 'package:flutter/material.dart';
import 'package:nfham2/dst.dart';
import 'package:nfham2/presentation/widgets/material_details_screen/material_details_screen_list_of_vieos.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeView extends StatefulWidget {
  final List<dynamic> lessons;

  YoutubeView({Key? key, required this.title, required this.lessons})
      : super(key: key);
  final String title;

  @override
  State<YoutubeView> createState() => _YoutubeViewState();
}

class _YoutubeViewState extends State<YoutubeView> {
  late YoutubePlayerController controller;


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text("widget.title"),
        ),
        body: ListView.builder(
            itemCount: widget.lessons.length,
            itemBuilder: (context, index) {
              print(widget.lessons[index]);
              return YoutubeListOfVideosScreen(title: widget.title, url: widget.lessons[index]);
            }), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
