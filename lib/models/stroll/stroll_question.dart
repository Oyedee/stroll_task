import 'package:json_annotation/json_annotation.dart';

part 'stroll_room.g.dart';

@JsonSerializable()
class StrollRoom {
  final List<Question> questions;
  final RoomInfo roomInfo;

  StrollRoom({required this.questions, required this.roomInfo});

  factory StrollRoom.fromJson(Map<String, dynamic> json) => _$StrollRoomFromJson(json);
  Map<String, dynamic> toJson() => _$StrollRoomToJson(this);
}

@JsonSerializable()
class Question {
  final String id;
  final String type;
  final Author author;
  final Content content;
  final Metadata metadata;

  Question({
    required this.id,
    required this.type,
    required this.author,
    required this.content,
    required this.metadata,
  });

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

@JsonSerializable()
class Author {
  final String id;
  final String name;
  final int age;
  @JsonKey(name: 'profile_image')
  final String profileImage;

  Author({
    required this.id,
    required this.name,
    required this.age,
    required this.profileImage,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable()
class Content {
  final String question;
  final String quote;
  final List<Option> options;

  Content({
    required this.question,
    required this.quote,
    required this.options,
  });

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
  Map<String, dynamic> toJson() => _$ContentToJson(this);
}

@JsonSerializable()
class Option {
  final String id;
  final String text;
  @JsonKey(name: 'vote_count')
  final int voteCount;

  Option({
    required this.id,
    required this.text,
    required this.voteCount,
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable()
class Metadata {
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'expires_at')
  final String expiresAt;
  @JsonKey(name: 'total_responses')
  final int totalResponses;
  @JsonKey(name: 'engagement_score')
  final double engagementScore;

  Metadata({
    required this.createdAt,
    required this.expiresAt,
    required this.totalResponses,
    required this.engagementScore,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

@JsonSerializable()
class RoomInfo {
  final String id;
  final String name;
  @JsonKey(name: 'active_users')
  final int activeUsers;
  @JsonKey(name: 'time_remaining')
  final String timeRemaining;
  final String theme;
  final String status;

  RoomInfo({
    required this.id,
    required this.name,
    required this.activeUsers,
    required this.timeRemaining,
    required this.theme,
    required this.status,
  });

  factory RoomInfo.fromJson(Map<String, dynamic> json) => _$RoomInfoFromJson(json);
  Map<String, dynamic> toJson() => _$RoomInfoToJson(this);
}
