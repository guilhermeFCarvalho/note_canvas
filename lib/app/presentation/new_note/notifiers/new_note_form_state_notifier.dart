import 'package:note_canvas/app/presentation/new_note/notifiers/new_note_form_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewNoteFormStateNotifier extends StateNotifier<NewNoteFormState> {
  NewNoteFormStateNotifier() : super(NewNoteFormState.initial());

  void updateId(String? id) {
    state = state.copyWith(id: id);
  }

  void updateTitle(String? title) {
    state = state.copyWith(title: title);
  }

  void updateColor(String? color) {
    state = state.copyWith(color: color);
  }

  void updateContent(String? content) {
    state = state.copyWith(content: content);
  }
}

final newNoteFormStateNotifierProvider = StateNotifierProvider.autoDispose<
    NewNoteFormStateNotifier, NewNoteFormState>(
  (_) => NewNoteFormStateNotifier(),
);
