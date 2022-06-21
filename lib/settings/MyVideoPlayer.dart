import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stagenew/settings/multiswitch.dart';
import 'package:video_player/video_player.dart';
import '../../../another.dart';
import '../../../components/roundedbutton.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  VideoPlayerController? controller;

  String dataSource =
      "https://shivanesboutique.com/pub/media/S_MAM_VIDEO_10042021.mp4";
  String asset = "assets/video/my_video.mp4";

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..initialize().then((_) {
        setState(() {});
      });

    // controller!.play();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        leadingWidth: 45,
        title: Text(
          ' حول التطبيق ',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
            ),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        elevation: 0,
      ),
      body: Container(
          color: Color.fromARGB(255, 228, 228, 228),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/logopng.png",
                    height: size.height * 0.2, width: size.width * 0.25),
              ),
              const SizedBox(
                height: 30,
              ),
              controller!.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: controller!.value.aspectRatio,
                      child: VideoPlayer(controller!),
                    )
                  : Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
              SizedBox(
                height: 25,
              ),
              RoundedButton(
                text: "أكد",
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (controller!.value.isPlaying) {
              controller!.pause();
            } else {
              controller!.play();
            }
          });
        },
        child:
            Icon(controller!.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
