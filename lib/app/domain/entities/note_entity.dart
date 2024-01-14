import 'package:equatable/equatable.dart';

class NoteEntity extends Equatable {
  final String id;
  final String title;
  final String content;
  final String color;
  final String lastModified;

  const NoteEntity({
    required this.content,
    required this.id,
    required this.title,
    required this.color,
    required this.lastModified,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        content,
        lastModified,
        color,
      ];
}
