import 'package:g_notes/app/core/error/failure.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';
import 'package:g_notes/app/domain/services/notes/notes_service.dart';
import 'package:g_notes/app/infra/services/notes_service_impl.dart';
import 'package:g_notes/app/shared/common/common_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef NewNoteState = CommonState<Failure, NoteEntity>;

class NewNoteNotifier extends StateNotifier<NewNoteState> {
  final NotesService service;
  NewNoteNotifier(this.service) : super(const NewNoteState.initial());

  Future<void> saveNote(NoteEntity note) async {
    state = const NewNoteState.loadInProgress();
    final result = await service.saveNote(
      note,
    );

    state = result.fold(
      (failure) => NewNoteState.loadFailure(failure),
      (note) => NewNoteState.loadSuccess(note),
    );
  }
}

final newNoteStateNotifierProvider =
    StateNotifierProvider.autoDispose<NewNoteNotifier, NewNoteState>(
  (ref) => NewNoteNotifier(
    ref.read(notesServiceProvider),
  ),
);
