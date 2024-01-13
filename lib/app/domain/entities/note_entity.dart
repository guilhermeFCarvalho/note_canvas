import 'package:equatable/equatable.dart';

class NoteEntity extends Equatable {
  final String content;
  final String id;

  const NoteEntity({
    required this.content,
    required this.id,
  });

  @override
  List<Object?> get props => [
        content,
        id,
      ];
}
