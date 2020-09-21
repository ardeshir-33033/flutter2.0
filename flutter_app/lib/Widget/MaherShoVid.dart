import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class buildAmozesh1 extends StatefulWidget {
  @override
  _buildAmozesh1State createState() => _buildAmozesh1State();
}

class _buildAmozesh1State extends State<buildAmozesh1> {
  VideoPlayerController _controller;
  Future<void> _initializedVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("videos/small.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: deviceInfo.size.height / 7,
              width: deviceInfo.size.width / 3,
              child: Center(
                child: _controller.value.initialized ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    :Container(),
              ),
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  _controller.value.isPlaying?_controller.pause():_controller.play();
                });
              },
              icon: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                size: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        VidsText(title: "جلسه اول",),
        VidsText(title: "لورم ایپسوم",)
      ],
    );;
  }
}
class VidsText extends StatelessWidget {
  const VidsText({
    this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(right: mainWidth / 15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: mainWidth / 25,
          ),
        ),
      ),
    );
  }
}