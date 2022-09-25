
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeViewScreen extends StatefulWidget {
  String url;
  YoutubeViewScreen({Key? key, required this.title,required this.url}) : super(key: key);
  final String title;

  @override
  State<YoutubeViewScreen> createState() => _YoutubeViewScreenState();
}

class _YoutubeViewScreenState extends State<YoutubeViewScreen> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    String url = widget.url;
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
          showLiveFullscreenButton: true,
          useHybridComposition: true,
        ))
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(controller: controller),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            title: Text(
                widget.title
            ),
          ),
          body: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height /4,
              ),
              player,
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}