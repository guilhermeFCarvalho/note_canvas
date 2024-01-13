import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

final firestoreProvider = Provider((_) => FirebaseFirestore.instance);
