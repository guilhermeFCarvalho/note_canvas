import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_canvas/app/core/error/failure.dart';
import 'package:note_canvas/app/core/shared/common/common_state.dart';
import 'package:note_canvas/app/domain/services/notes/notes_service.dart';
import 'package:note_canvas/app/infra/services/notes_service_impl.dart';

typedef DeleteNoteState = CommonState<Failure, Unit>;

class DeleteNoteNotifier extends StateNotifier<DeleteNoteState> {
  NotesService service;
  DeleteNoteNotifier(this.service) : super(const DeleteNoteState.initial());

  Future<void> deleteNote(String id) async {
    state = const DeleteNoteState.loadInProgress();

    final result = await service.deleteNote(id);

    state = result.fold(
      (failure) => DeleteNoteState.loadFailure(failure),
      (unit) => DeleteNoteState.loadSuccess(unit),
    );
  }
}

final deleteNoteStateNotifierProvider =
    StateNotifierProvider.autoDispose<DeleteNoteNotifier, DeleteNoteState>(
  (ref) => DeleteNoteNotifier(
    ref.read(notesServiceProvider),
  ),
);
