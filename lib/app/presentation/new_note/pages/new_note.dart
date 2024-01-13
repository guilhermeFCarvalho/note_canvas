import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewNote extends StatelessWidget {
  const NewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('new note'),
          actions: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: const Icon(Icons.save),
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('your note has been saved'),
                ),
              ),
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'write your note here...',
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  maxLengthEnforcement:
                      MaxLengthEnforcement.truncateAfterCompositionEnds,
                ),
              ),
            ],
          ),
        ));
  }
}
