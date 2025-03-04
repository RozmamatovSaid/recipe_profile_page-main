import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:video_player/video_player.dart';

class RecipeDetailVideo extends StatefulWidget {
  const RecipeDetailVideo({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<RecipeDetailVideo> createState() => _RecipeDetailVideoState();
}

class _RecipeDetailVideoState extends State<RecipeDetailVideo> {
  late final VideoPlayerController controller;
  bool isMuted = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ],
    );

    controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    controller.initialize().then(
          (value) => setState(() {
        controller.play();
      }),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(controller),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 12,
                  child: VideoProgressIndicator(
                    controller,
                    allowScrubbing: true,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    colors: VideoProgressColors(
                      playedColor: AppColors.redPinkMain,
                      backgroundColor: AppColors.milkWhite,
                      bufferedColor: AppColors.pink,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 10,
                child: IconButton(
                  icon: Icon(
                    isMuted ? Icons.volume_off : Icons.volume_up,
                    color: AppColors.milkWhite,
                  ),
                  onPressed: () {
                    isMuted = !isMuted;
                    controller.setVolume(isMuted ? 0.0 : 1.0);
                    setState(() {});
                  },
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: AppColors.milkWhite,
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    controller.value.isPlaying
                        ? controller.pause()
                        : controller.play();

                    setState(() {});
                  },
                  child: !controller.value.isPlaying
                      ? SvgPicture.asset("assets/icons/video.svg")
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}