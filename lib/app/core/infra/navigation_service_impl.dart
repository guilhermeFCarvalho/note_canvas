import 'package:flutter/material.dart';
import 'package:g_notes/app/core/domain/services/navigation_service.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';
import 'package:g_notes/app/presentation/notes_list/notifiers/notes_list_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavigationServiceImpl extends NavigationService {
  final NotesListNotifier notifier;

  NavigationServiceImpl(this.notifier);

  @override
  Future<void> goToNewNote(BuildContext context, NoteEntity? note) async {
    await context.push('/new-note', extra: note).then(
          (_) => notifier.fetchNotes(),
        );
  }
}

final navigationServiceProvider = Provider.autoDispose<NavigationService>(
  (ref) => NavigationServiceImpl(
    ref.read(notesListStateNotifierProvider.notifier),
  ),
);
