import '../../features/home/models/stroll/stroll_question.dart';
import '../../sources/stroll/stroll_api_data_source.dart';
import 'mappers/stroll_question_mapper.dart';
import 'stroll_repository.dart';

class StrollRepositoryImpl implements StrollRepository {
  final StrollApiDataSource dataSource;

  StrollRepositoryImpl({required this.dataSource});
  @override
  Future<StrollRoom> getRooms() async {
    final rooms = await dataSource.getStrollRooms();
    return rooms.toModel();
  }

  @override
  Future<void> submitAnswer(String questionId, int selectedOption) async {
    await dataSource.submitAnswer(questionId, selectedOption);
  }
}
