import 'package:flutter/material.dart';
import 'package:note_canvas/app/core/infra/navigation_service_impl.dart';
import 'package:note_canvas/app/domain/entities/note_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NoteCardWidget extends ConsumerWidget {
  final NoteEntity note;

  const NoteCardWidget({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationService = ref.watch(navigationServiceProvider);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => navigationService.goToNewNote(context, note),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Color(
          int.parse(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(child: Text(note.content)),
          ],
        ),
      ),
    );
  }
}
