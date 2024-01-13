import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';
import 'package:g_notes/app/presentation/new_note/notifiers/new_note_form_state_notifier.dart';
import 'package:g_notes/app/presentation/new_note/notifiers/new_note_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class NewNotePage extends HookConsumerWidget {
  final NoteEntity? note;
  const NewNotePage({
    super.key,
    this.note,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newNoteNotifier = ref.watch(newNoteStateNotifierProvider.notifier);
    final newNoteFormNotifier =
        ref.watch(newNoteFormStateNotifierProvider.notifier);
    final newNoteState = ref.watch(newNoteFormStateNotifierProvider);

    final noteController = useTextEditingController();
    final ValueNotifier<NoteEntity?> noteValueNotifier = useState(note);
    const uuid = Uuid();
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          noteController.text = note?.content ?? '';
          newNoteFormNotifier.updateContent(note?.content);
          newNoteFormNotifier.updateId(note?.id ?? uuid.v4());
        },
      );
      return null;
    }, const []);
    ref.listen<NewNoteState>(
      newNoteStateNotifierProvider,
      (_, next) {
        next.whenOrNull(
          loadSuccess: (note) {
            noteValueNotifier.value = note;
            return ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('success'),
              ),
            );
          },
          loadFailure: (_) => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('failure'),
            ),
          ),
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('new note'),
        actions: [
          if (newNoteState.noteCanSubmit) ...[
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: const Icon(Icons.save),
              onTap: () {
                newNoteNotifier.saveNote(
                  NoteEntity(
                    content: newNoteState.content!,
                    id: newNoteState.id!,
                  ),
                );
              },
            ),
          ]
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                decoration: const InputDecoration.collapsed(
                  hintText: 'write your note here...',
                ),
                keyboardType: TextInputType.multiline,
                controller: noteController,
                maxLines: null,
                maxLengthEnforcement:
                    MaxLengthEnforcement.truncateAfterCompositionEnds,
                onChanged: (value) => newNoteFormNotifier.updateContent(value),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
