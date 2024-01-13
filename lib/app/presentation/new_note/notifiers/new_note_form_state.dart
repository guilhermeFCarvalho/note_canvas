import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_note_form_state.freezed.dart';

@freezed
abstract class NewNoteFormState with _$NewNoteFormState {
  const NewNoteFormState._();
  factory NewNoteFormState({
    required String? id,
    required String? content,
  }) = _NewNoteFormState;

  factory NewNoteFormState.initial() => NewNoteFormState(
        id: null,
        content: null,
      );

  bool get noteCanSubmit =>
      id != null && id!.isNotEmpty && content != null && content!.isNotEmpty;
}
