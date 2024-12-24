import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import '../../models/stroll/stroll_room.dart';
import '../../services/api/dio_service.dart';

typedef Json = Map<String, dynamic>;

abstract class StrollApiDataSource {
  Future<StrollRoom> getStrollRooms();

  Future<void> submitAnswer(String questionId, int selectedOption);
}

class StrollApiDataSourceImpl implements StrollApiDataSource {
  final DioService api;

  StrollApiDataSourceImpl({required this.api});

  @override
  Future<StrollRoom> getStrollRooms() async {
    await Future.delayed(const Duration(seconds: 3));

    const _mockData = '/Users/mac/StudioProjects/stroll_task/assets/json/fake_data.json';
    final file = await File(_mockData).readAsString();
    final json = jsonDecode(file) as Json;
    final response = StrollRoom.fromJson(json['data']);
    return response;
  }

  @override
  Future<void> submitAnswer(String questionId, int selectedOption) async {
    await Future.delayed(const Duration(milliseconds: 800));

    log('Submitting answer for question $questionId');
  }
}
