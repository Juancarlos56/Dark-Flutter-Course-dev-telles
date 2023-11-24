import 'package:flutter/material.dart';
import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';

class LocalVideoModel {
  final int views;
  final String name;
  final String videoUrl;
  final int likes;

  LocalVideoModel({
    this.views = 0,
    required this.name,
    required this.videoUrl,
    this.likes = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'] ?? 'No name',
          videoUrl: json['videoUrl'],
          likes: json['likes'] ?? 0,
          views: json['views'] ?? 0);

  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, view: views);
}
