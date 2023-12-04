import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavegation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvier.notifier).loadNextPage();
    ref.read(popularMoviesProvier.notifier).loadNextPage();
    ref.read(upCommingMoviesProvier.notifier).loadNextPage();
    ref.read(topRatedMoviesProvier.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final initialLoading = ref.watch(initialLoadingProvider);

    if (initialLoading) return const FullScreenLoader();

    final nowPlayingMoviesSlideshow = ref.watch(moviesSlideshowProvider);

    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvier);
    final popularMovies = ref.watch(popularMoviesProvier);
    final upCommingMovies = ref.watch(upCommingMoviesProvier);
    final topRatedMovies = ref.watch(topRatedMoviesProvier);

    return Visibility(
      visible: !initialLoading,
      child: CustomScrollView(slivers: [
        const SliverAppBar(
          centerTitle: false,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
            titlePadding: EdgeInsets.zero,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                      children: [
                        MoviesSlideshow(movies: nowPlayingMoviesSlideshow),
                        MovieHorizontalListview(
                          movies: nowPlayingMoviesSlideshow,
                          title: 'En cines',
                          subtitle: 'Lunes 04',
                          loadNextPage: () => ref
                              .read(nowPlayingMoviesProvier.notifier)
                              .loadNextPage(),
                        ),
                        MovieHorizontalListview(
                          movies: upCommingMovies,
                          title: 'Proximamente',
                          subtitle: 'En este mes',
                          loadNextPage: () => ref
                              .read(upCommingMoviesProvier.notifier)
                              .loadNextPage(),
                        ),
                        MovieHorizontalListview(
                          movies: popularMovies,
                          title: 'Populares',
                          //subtitle: 'En este mes',
                          loadNextPage: () => ref
                              .read(popularMoviesProvier.notifier)
                              .loadNextPage(),
                        ),
                        MovieHorizontalListview(
                          movies: topRatedMovies,
                          title: 'Mejor Calificadas',
                          subtitle: 'de todos los tiempos',
                          loadNextPage: () => ref
                              .read(topRatedMoviesProvier.notifier)
                              .loadNextPage(),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                childCount: 1))
      ]),
    );
  }
}
