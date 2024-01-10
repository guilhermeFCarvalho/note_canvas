import 'package:flutter/material.dart';
import 'package:g_notes/app/presentation/list_notes/pages/list_notes_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListNotesPage(),
    );
  }
}
