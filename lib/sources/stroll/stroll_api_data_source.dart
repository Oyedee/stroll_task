import 'dart:convert';
import 'dart:developer';

import '../../models/stroll/stroll_question.dart';
import '../../services/api/dio_service.dart';

abstract class StrollApiDataSource {
  Future<StrollRoom> getStrollRooms();

  Future<void> submitAnswer(String questionId, int selectedOption);
}

class StrollApiDataSourceImpl implements StrollApiDataSource {
  final DioService api;

  StrollApiDataSourceImpl({required this.api});

  @override
  Future<StrollRoom> getStrollRooms() async {
    await Future.delayed(const Duration(milliseconds: 800));

    const _mockData = 'assets/json/fake_data.json';
    final json = jsonDecode(_mockData);
    final response = StrollRoom.fromJson(json);
    return response;
  }

  @override
  Future<void> submitAnswer(String questionId, int selectedOption) async {
    await Future.delayed(const Duration(milliseconds: 800));

    log('Submitting answer for question $questionId');
  }
}
