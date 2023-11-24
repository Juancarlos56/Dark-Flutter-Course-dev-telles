import 'package:flutter/widgets.dart';
import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';
import 'package:tiktok_home_with_dart/infrastructure/repositories/video_posts_repository_implementation.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepositoryImplementation videoRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoRepository});

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    final newVideos = await videoRepository.getTrandingVideosByPage(1);
    notifyListeners();
  }
}
