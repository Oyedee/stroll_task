import '../../features/home/models/stroll/stroll_question.dart';

abstract class StrollRepository {
  Future<StrollRoom> getRooms();
  Future<void> submitAnswer(String questionId, int selectedOption);
}
