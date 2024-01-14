import 'package:flutter/material.dart';
import 'package:note_canvas/app/core/infra/navigation_service_impl.dart';
import 'package:note_canvas/app/domain/entities/note_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_canvas/app/presentation/notes_list/notifiers/delete_note_notifier.dart';

class NoteCardWidget extends ConsumerWidget {
  final NoteEntity note;

  const NoteCardWidget({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationService = ref.watch(navigationServiceProvider);
    final deleteNoteNotifier =
        ref.watch(deleteNoteStateNotifierProvider.notifier);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => navigationService.goToNewNote(context, note),
      child: Container(
        padding: const EdgeInsets.only(left: 8, top: 8),
        color: Color(
          int.parse(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              note.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Flexible(
              child: Text(
                note.content,
                overflow: TextOverflow.fade,
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: PopupMenuButton(
                      padding: EdgeInsets.zero,
                      iconSize: 20,
                      itemBuilder: (context) => [
                         PopupMenuItem(
                          child: const Text('delete'),
                          onTap:() =>  deleteNoteNotifier.deleteNote(note.id),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
