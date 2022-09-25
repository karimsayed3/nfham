import 'package:flutter/material.dart';
import 'package:nfham2/youtube_veiw_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeView2 extends StatefulWidget {
  String url;

  YoutubeView2({Key? key, required this.title, required this.url})
      : super(key: key);
  final String title;

  @override
  State<YoutubeView2> createState() => _YoutubeView2State();
}

class _YoutubeView2State extends State<YoutubeView2> {
  late YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ))
    ..addListener(() {
      if (mounted) {
        setState(() {});
      }
    });

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
        builder: (context, player) => car(
          player: player,
          title: widget.title,
          url: widget.url,
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget car({player, title, url}) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => YoutubeViewScreen(title: title, url: url),));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        elevation: .5,
        child: Container(
          width: 120,
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 80,
                child: player,
              ),
              const SizedBox(
                width: 20,
              ),
              const Expanded(
                child: Text(
                  'Youtube',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
