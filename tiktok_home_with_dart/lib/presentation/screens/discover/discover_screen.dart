import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_home_with_dart/presentation/providers/discover_provider.dart';
import 'package:tiktok_home_with_dart/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Intanciar nuestro provider
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
        body: discoverProvider.initialLoading
            ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            : VideoScrollableView(
                videos: discoverProvider.videos,
              ));
  }
}
