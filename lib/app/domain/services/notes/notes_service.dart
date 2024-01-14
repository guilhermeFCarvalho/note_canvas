import 'package:dartz/dartz.dart';
import 'package:g_notes/app/core/error/failure.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';

abstract class NotesService {
  Future<Either<Failure, List<NoteEntity>>> fetchNotes();

  Future<Either<Failure, NoteEntity>> saveNote(
    NoteEntity note,
  );
}
