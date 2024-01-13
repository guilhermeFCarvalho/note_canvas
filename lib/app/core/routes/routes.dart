import 'package:g_notes/app/presentation/new_note/pages/new_note_page.dart';
import 'package:g_notes/app/presentation/notes_list/pages/notes_list.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const NotesListPage(),
    ),
    GoRoute(
      path: '/new-note',
      builder: (_, __) => const NewNotePage(),
    ),
  ],
);
