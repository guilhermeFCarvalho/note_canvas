import 'package:flutter/material.dart';
import 'package:g_notes/app/presentation/notes_list/pages/notes_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotesListPage(),
    );
  }
}
