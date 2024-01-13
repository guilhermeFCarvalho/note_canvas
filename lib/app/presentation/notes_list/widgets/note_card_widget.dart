import 'package:flutter/material.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';
import 'package:go_router/go_router.dart';

class NoteCardWidget extends StatelessWidget {
  final NoteEntity note;
  final Color color;
  const NoteCardWidget({
    super.key,
    required this.note,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.push('/new-note', extra: note),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'title',
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
