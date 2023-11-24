import 'package:flutter/material.dart';
import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';
import 'package:tiktok_home_with_dart/presentation/widgets/shared/video_player/video_bottons.dart';
import 'package:tiktok_home_with_dart/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    //Cargar videos pocos a la vez
    return PageView.builder(
      scrollDirection: Axis.vertical,
      //Para andorid
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
                child: FullScreenPlayer(
              caption: videoPost.caption,
              videoUrl: videoPost.videoUrl,
            )),
            //FullScreenPlayer(video: )
            //video player + gradiente

            //botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(
                video: videoPost,
              ),
            )
          ],
        );
      },
    );
  }
}
