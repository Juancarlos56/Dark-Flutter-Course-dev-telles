import 'package:tiktok_home_with_dart/domain/datasources/video_post_datasource.dart';
import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';
import 'package:tiktok_home_with_dart/infrastructure/models/local_video_model.dart';
import 'package:tiktok_home_with_dart/shared/data/local_video_post.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
