import 'package:note_canvas/app/domain/entities/note_entity.dart';
import 'package:note_canvas/app/presentation/new_note/pages/new_note_page.dart';
import 'package:note_canvas/app/presentation/notes_list/pages/notes_list_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const NotesListPage(),
    ),
    GoRoute(
      path: '/new-note',
      builder: (_, state) {
        return NewNotePage(note: state.extra as NoteEntity?);
      },
    ),
  ],
);
