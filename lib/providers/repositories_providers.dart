import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/stroll/stroll_repository.dart';
import '../repositories/stroll/stroll_repository_impl.dart';
import 'data_source_providers.dart';

final strollRepositoryProvider = Provider<StrollRepository>(
  (ref) => StrollRepositoryImpl(
    dataSource: ref.read(strollApiDataSourceProvider),
  ),
);
