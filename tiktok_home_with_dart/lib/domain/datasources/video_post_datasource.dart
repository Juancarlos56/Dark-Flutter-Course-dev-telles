import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getTrandingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}
