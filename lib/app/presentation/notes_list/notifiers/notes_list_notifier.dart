import 'package:g_notes/app/core/error/failure.dart';
import 'package:g_notes/app/core/shared/common/common_state.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';
import 'package:g_notes/app/domain/services/notes/notes_service.dart';
import 'package:g_notes/app/infra/services/notes_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef NotesListState = CommonState<Failure, List<NoteEntity>>;

class NotesListNotifier extends StateNotifier<NotesListState> {
  final NotesService service;
  NotesListNotifier(this.service) : super(const NotesListState.initial());

  Future<void> fetchNotes() async {
    state = const NotesListState.loadInProgress();
    final result = await service.fetchNotes();
    state = result.fold(
      (failure) => NotesListState.loadFailure(failure),
      (data) => NotesListState.loadSuccess(data),
    );
  }
}

final notesListStateNotifierProvider =
    StateNotifierProvider.autoDispose<NotesListNotifier, NotesListState>(
  (ref) => NotesListNotifier(
    ref.read(notesServiceProvider),
  ),
);
