import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/repositories_providers.dart';
import '../../../repositories/stroll/stroll_repository.dart';
import '../models/stroll/stroll_question.dart';

final currentPageProvider = StateProvider<int>((ref) => 1);
final totalPagesProvider = StateProvider<int>((ref) => 1);

final homeControllerProvider = StateNotifierProvider<HomeController, AsyncValue<StrollRoom>>((ref) {
  final movieRepository = ref.read(strollRepositoryProvider);

  return HomeController(ref, movieRepository);
});

class HomeController extends StateNotifier<AsyncValue<StrollRoom>> {
  HomeController(this.ref, this.strollRepository) : super(const AsyncLoading()) {
    getRoom();
  }
  final StrollRepository strollRepository;
  final Ref ref;

  Future<void> getRoom() async {
    state = const AsyncLoading();

    /// AsyncValue.guard() automatically catches all exceptions
    state = await AsyncValue.guard(() async {
      /// Fetch movies
      final room = await strollRepository.getRooms();

      /// Return list of movies
      return room;
    });
  }
}
