import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:note_canvas/app/core/error/failure.dart';
import 'package:note_canvas/app/core/providers/firebase_providers.dart';
import 'package:note_canvas/app/domain/entities/note_entity.dart';
import 'package:note_canvas/app/domain/services/notes/notes_service.dart';
import 'package:note_canvas/app/infra/dtos/notes_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotesServiceImpl extends NotesService {
  FirebaseFirestore firestore;

  NotesServiceImpl(this.firestore);

  @override
  Future<Either<Failure, List<NoteEntity>>> fetchNotes() async {
    try {
      final result = await firestore.collection('notes').get();

      final List<NoteEntity> notesList = result.docs
          .map<NoteEntity>(
            (e) => NoteDto.fromMap(
              e.data(),
            ).toEntity(),
          )
          .toList();
      return right(notesList);
    } catch (e) {
      return left(
        const Failure(message: 'error'),
      );
    }
  }

  @override
  Future<Either<Failure, NoteEntity>> saveNote(
    NoteEntity note,
  ) async {
    try {
      await firestore.collection('notes').doc(note.id).set(
            NoteDto.fromEntity(note).toMap(),
          );
      return right(note);
    } catch (e) {
      return left(
        const Failure(message: 'error'),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteNote(String id) async {
    try {
      await firestore.collection('notes').doc(id).delete();
      return right(unit);
    } catch (e) {
      return left(
        const Failure(message: 'message'),
      );
    }
  }
}

final notesServiceProvider = Provider.autoDispose<NotesService>(
  (ref) => NotesServiceImpl(
    ref.read(firestoreProvider),
  ),
);
