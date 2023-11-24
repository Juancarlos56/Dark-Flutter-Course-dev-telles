import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_home_with_dart/config/theme/app_theme.dart';
import 'package:tiktok_home_with_dart/domain/entities/video_post.dart';
import 'package:tiktok_home_with_dart/infrastructure/datasources/local_video_datasource_implementation.dart';
import 'package:tiktok_home_with_dart/infrastructure/repositories/video_posts_repository_implementation.dart';
import 'package:tiktok_home_with_dart/presentation/screens/discover/discover_screen.dart';
import 'package:tiktok_home_with_dart/presentation/providers/discover_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImplementation(
        videosDataSource: LocalVideoDataSource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          //Operador de cascada dentro de DART
          create: (context) =>
              DiscoverProvider(videoRepository: videoPostRepository)
                ..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'TikTok App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
