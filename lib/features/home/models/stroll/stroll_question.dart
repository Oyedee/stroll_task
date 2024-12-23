import 'package:equatable/equatable.dart';

class StrollRoom extends Equatable {
  final List<Question> questions;
  final RoomInfo roomInfo;

  const StrollRoom({required this.questions, required this.roomInfo});

  @override
  List<Object?> get props => [questions, roomInfo];
}

class Question extends Equatable {
  final String id;
  final String type;
  final Author author;
  final Content content;
  final Metadata metadata;

  const Question({
    required this.id,
    required this.type,
    required this.author,
    required this.content,
    required this.metadata,
  });

  @override
  List<Object?> get props => [id, type, author, content, metadata];
}

class Author extends Equatable {
  final String id;
  final String name;
  final int age;
  final String profileImage;

  const Author({
    required this.id,
    required this.name,
    required this.age,
    required this.profileImage,
  });

  @override
  List<Object?> get props => [id, name, age, profileImage];
}

class Content extends Equatable {
  final String question;
  final String quote;
  final List<Option> options;

  const Content({
    required this.question,
    required this.quote,
    required this.options,
  });

  @override
  List<Object?> get props => [question, quote, options];
}

class Option extends Equatable {
  final String id;
  final String text;
  final int voteCount;

  const Option({
    required this.id,
    required this.text,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [id, text, voteCount];
}

class Metadata extends Equatable {
  final String createdAt;
  final String expiresAt;
  final int totalResponses;
  final double engagementScore;

  const Metadata({
    required this.createdAt,
    required this.expiresAt,
    required this.totalResponses,
    required this.engagementScore,
  });

  @override
  List<Object?> get props => [createdAt, expiresAt, totalResponses, engagementScore];
}

class RoomInfo extends Equatable {
  final String id;
  final String name;
  final int activeUsers;
  final String timeRemaining;
  final String theme;
  final String status;

  const RoomInfo({
    required this.id,
    required this.name,
    required this.activeUsers,
    required this.timeRemaining,
    required this.theme,
    required this.status,
  });

  @override
  List<Object?> get props => [id, name, activeUsers, timeRemaining, theme, status];
}
