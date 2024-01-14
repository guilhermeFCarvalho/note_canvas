// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:g_notes/app/domain/entities/note_entity.dart';

@immutable
class NoteDto {
  final String id;
  final String title;
  final String content;
  final String color;
  final String lastModified;

  const NoteDto({
    required this.id,
    required this.title,
    required this.content,
    required this.color,
    required this.lastModified,
  });

  NoteDto copyWith({
    String? id,
    String? title,
    String? content,
    String? color,
    String? lastModified,
  }) {
    return NoteDto(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      color: color ?? this.color,
      lastModified: lastModified ?? this.lastModified,
    );
  }

  NoteEntity toEntity() {
    return NoteEntity(
      content: content,
      id: id,
      title: title,
      color: color,
      lastModified: lastModified,
    );
  }

  factory NoteDto.fromEntity(NoteEntity entity) {
    return NoteDto(
      content: entity.content,
      id: entity.id,
      title: entity.title,
      color: entity.color,
      lastModified: entity.lastModified,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'content': content,
      'color': color,
      'lastModified': lastModified,
    };
  }

  factory NoteDto.fromMap(Map<String, dynamic> map) {
    return NoteDto(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      color: map['color'],
      lastModified: map['lastModified'],
    );
  }
}
