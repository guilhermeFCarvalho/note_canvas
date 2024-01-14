import 'package:dartz/dartz.dart';
import 'package:note_canvas/app/core/error/failure.dart';
import 'package:note_canvas/app/domain/entities/note_entity.dart';

abstract class NotesService {
  Future<Either<Failure, List<NoteEntity>>> fetchNotes();

  Future<Either<Failure, NoteEntity>> saveNote(NoteEntity note);
  Future<Either<Failure, Unit>> deleteNote(String id);
}
