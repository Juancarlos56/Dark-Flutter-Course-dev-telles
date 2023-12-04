import 'movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final step1 = ref.watch(nowPlayingMoviesProvier).isEmpty;
  final step2 = ref.watch(popularMoviesProvier).isEmpty;
  final step3 = ref.watch(upCommingMoviesProvier).isEmpty;
  final step4 = ref.watch(topRatedMoviesProvier).isEmpty;
  if (step2 || step3 || step4 || step1) {
    return true;
  }
  return false;
});
