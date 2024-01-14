import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_note_form_state.freezed.dart';

@freezed
abstract class NewNoteFormState with _$NewNoteFormState {
  const NewNoteFormState._();
  factory NewNoteFormState({
    required String? id,
    required String? title,
    required String? content,
    required String? color,
  }) = _NewNoteFormState;

  factory NewNoteFormState.initial() => NewNoteFormState(
        id: null,
        content: null,
        title: null,
        color: null,
      );

  bool get noteCanSubmit => content != null && content!.isNotEmpty;
}
