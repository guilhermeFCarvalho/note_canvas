import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:note_canvas/app/core/infra/navigation_service_impl.dart';
import 'package:note_canvas/app/presentation/notes_list/notifiers/delete_note_notifier.dart';
import 'package:note_canvas/app/presentation/notes_list/notifiers/notes_list_notifier.dart';
import 'package:note_canvas/app/presentation/notes_list/widgets/note_card_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotesListPage extends HookConsumerWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesListNotifier =
        ref.watch(notesListStateNotifierProvider.notifier);
    final navigationService = ref.watch(navigationServiceProvider);
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        notesListNotifier.fetchNotes();
      });
      return null;
    }, const []);
    final topPadding = MediaQuery.of(context).padding.top + 20;

    ref.listen<NotesListState>(
      notesListStateNotifierProvider,
      (_, next) {
        next.whenOrNull(
          loadSuccess: (data) {
            if (data.isEmpty) {
              navigationService.goToNewNote(context, null);
            }
            return;
          },
        );
      },
    );

    ref.listen<DeleteNoteState>(deleteNoteStateNotifierProvider, (_, next) {
      next.whenOrNull(loadSuccess: (_) => notesListNotifier.fetchNotes());
    });

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigationService.goToNewNote(context, null),
        child: const Icon(Icons.add),
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
                  if (notes.isEmpty) {
                    const Text(
                        'your notes list is empty, start writing your notes!');
                  }
                  return SliverGrid.count(
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    crossAxisCount: 3,
                    children: notes
                        .map<NoteCardWidget>(
                          (note) => NoteCardWidget(
                            note: note,
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
                orElse: () => const SliverToBoxAdapter(
                  child: Text('or else'),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
