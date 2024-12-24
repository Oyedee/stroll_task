// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stroll_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StrollRoom _$StrollRoomFromJson(Map<String, dynamic> json) => StrollRoom(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomInfo: RoomInfo.fromJson(json['room_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StrollRoomToJson(StrollRoom instance) =>
    <String, dynamic>{
      'questions': instance.questions,
      'room_info': instance.roomInfo,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: json['id'] as String,
      type: json['type'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      content: Content.fromJson(json['content'] as Map<String, dynamic>),
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'author': instance.author,
      'content': instance.content,
      'metadata': instance.metadata,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      profileImage: json['profile_image'] as String,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'profile_image': instance.profileImage,
    };

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      question: json['question'] as String,
      quote: json['quote'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'question': instance.question,
      'quote': instance.quote,
      'options': instance.options,
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      id: json['id'] as String,
      text: json['text'] as String,
      voteCount: (json['vote_count'] as num).toInt(),
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'vote_count': instance.voteCount,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      createdAt: json['created_at'] as String,
      expiresAt: json['expires_at'] as String,
      totalResponses: (json['total_responses'] as num).toInt(),
      engagementScore: (json['engagement_score'] as num).toDouble(),
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'created_at': instance.createdAt,
      'expires_at': instance.expiresAt,
      'total_responses': instance.totalResponses,
      'engagement_score': instance.engagementScore,
    };

RoomInfo _$RoomInfoFromJson(Map<String, dynamic> json) => RoomInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      activeUsers: (json['active_users'] as num).toInt(),
      timeRemaining: json['time_remaining'] as String,
      theme: json['theme'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$RoomInfoToJson(RoomInfo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active_users': instance.activeUsers,
      'time_remaining': instance.timeRemaining,
      'theme': instance.theme,
      'status': instance.status,
    };
