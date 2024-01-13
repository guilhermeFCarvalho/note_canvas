import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:g_notes/app/presentation/notes_list/notifiers/notes_list_notifier.dart';
import 'package:g_notes/app/presentation/notes_list/widgets/note_card_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotesListPage extends HookConsumerWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesListNotifier =
        ref.watch(notesListStateNotifierProvider.notifier);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        notesListNotifier.fetchNotes();
      });
      return null;
    }, const []);
    final topPadding = MediaQuery.of(context).padding.top + 20;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async => await context
            .push('/new-note')
            .then((_) => notesListNotifier.fetchNotes()),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: topPadding,
            ),
            sliver: Consumer(builder: (_, cRef, __) {
              final state = cRef.watch(notesListStateNotifierProvider);
              return state.maybeWhen(
                loadSuccess: (notes) {
                  return SliverGrid.count(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 3,
                    children: notes
                        .map<NoteCardWidget>(
                          (note) => NoteCardWidget(
                            note: note,
                            color: Colors.green[100]!,
                          ),
                        )
                        .toList(),
                  );
                },
                loadInProgress: () => const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                loadFailure: (failure) => SliverToBoxAdapter(
                  child: Center(
                    child: Text(failure.message),
                  ),
                ),
                orElse: () =>
                    const SliverToBoxAdapter(child: SizedBox.shrink()),
              );
            }),
          )
        ],
      ),
    );
  }
}
