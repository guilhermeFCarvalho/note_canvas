

import 'package:flutter/material.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';

@immutable
class NoteDto {
  final String content;
  final String id;

  const NoteDto({
    required this.content,
    required this.id,
  });

  NoteDto copyWith({
    String? content,
    String? id,
  }) {
    return NoteDto(
      content: content ?? this.content,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'id': id,
    };
  }

  factory NoteDto.fromMap(Map<String, dynamic> map) {
    return NoteDto(
      content: map['content'] as String,
      id: map['id'] as String,
    );
  }

  NoteEntity toEntity() {
    return NoteEntity(
      content: content,
      id: id,
    );
  }

  factory NoteDto.fromEntity(NoteEntity entity) {
    return NoteDto(
      content: entity.content,
      id: entity.id,
    );
  }
}
