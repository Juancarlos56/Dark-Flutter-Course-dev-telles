import 'package:tiktok_home_with_dart/domain/datasources/video_post_datasource.dart';
import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';
import 'package:tiktok_home_with_dart/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImplementation implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImplementation({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosByPage(int page) {
    return videosDataSource.getTrandingVideosByPage(page);
  }
}
