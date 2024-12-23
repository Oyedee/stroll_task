import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../sources/stroll/stroll_api_data_source.dart';
import 'services_providers.dart';

final strollApiDataSourceProvider = Provider<StrollApiDataSource>((ref) => StrollApiDataSourceImpl(
      api: ref.read(dioServiceProvider),
    ));
