import 'package:flutter/material.dart';
import 'package:note_canvas/app/domain/entities/note_entity.dart';

abstract class NavigationService {
  Future<void> goToNewNote(BuildContext context, NoteEntity? note);
}
