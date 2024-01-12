import 'package:flutter/material.dart';

class NoteCardWidget extends StatelessWidget {
  final String title;
  final String content;
  final Color color;
  const NoteCardWidget({
    super.key,
    required this.title,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(content),
        ],
      ),
    );
  }
}
