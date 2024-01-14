import 'package:flutter/material.dart';
import 'package:g_notes/app/domain/entities/note_entity.dart';

abstract class NavigationService {
  Future<void> goToNewNote(BuildContext context, NoteEntity? note);
  
}
