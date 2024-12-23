import '../../../features/home/models/stroll/stroll_question.dart' as model;
import '../../../models/stroll/stroll_question.dart' as api;

extension StrollQuestionMapper on api.StrollRoom {
  model.StrollRoom toModel() => model.StrollRoom(
        questions: questions.map((e) => e.toModel()).toList(),
        roomInfo: roomInfo.toModel(),
      );
}

extension StrollQuestionListMapper on List<api.StrollRoom> {
  List<model.StrollRoom> toModel() => map((e) => e.toModel()).toList();
}

extension QuestionMapper on api.Question {
  model.Question toModel() => model.Question(
        id: id,
        type: type,
        author: author.toModel(),
        content: content.toModel(),
        metadata: metadata.toModel(),
      );
}

extension AuthorMapper on api.Author {
  model.Author toModel() => model.Author(
        id: id,
        name: name,
        age: age,
        profileImage: profileImage,
      );
}

extension ContentMapper on api.Content {
  model.Content toModel() => model.Content(
        question: question,
        quote: quote,
        options: options.map((e) => e.toModel()).toList(),
      );
}

extension OptionMapper on api.Option {
  model.Option toModel() => model.Option(
        id: id,
        text: text,
        voteCount: voteCount,
      );
}

extension MetadataMapper on api.Metadata {
  model.Metadata toModel() => model.Metadata(
        createdAt: createdAt,
        expiresAt: expiresAt,
        totalResponses: totalResponses,
        engagementScore: engagementScore,
      );
}

extension RoomInfoMapper on api.RoomInfo {
  model.RoomInfo toModel() => model.RoomInfo(
        id: id,
        name: name,
        activeUsers: activeUsers,
        timeRemaining: timeRemaining,
        theme: theme,
        status: status,
      );
}
