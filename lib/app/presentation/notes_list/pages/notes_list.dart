import 'package:flutter/material.dart';
import 'package:g_notes/app/presentation/notes_list/widgets/note_card_widget.dart';

class NotesListPage extends StatelessWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text(
              'Minhas Notas',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SliverGrid.count(
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            crossAxisCount: 3,
            children: [
              ...List.generate(
                20,
                (index) => NoteCardWidget(
                  title: 'test1',
                  content: 'content',
                  color: Colors.green[100]!,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
