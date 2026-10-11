import 'package:flutter/material.dart';
import 'package:sqflite_app/screens/db/db.dart';
import 'package:sqflite_app/screens/models/model.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final TextEditingController title = TextEditingController();
  final TextEditingController body = TextEditingController();
  final MyDb db = MyDb();
  bool _saving = false;

  @override
  void dispose() {
    title.dispose();
    body.dispose();
    super.dispose();
  }

  Future<void> _saveNote() async {
    final titleText = title.text.trim();
    final bodyText = body.text.trim();

    if (titleText.isEmpty && bodyText.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please write something first')),
      );
      return;
    }

    setState(() => _saving = true);

    await db.insertNote(NoteModel(title: titleText, body: bodyText));

    if (!mounted) return;
    Navigator.pop(context);
  }

  InputDecoration _inputDecoration(String label, {String? hint}) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 1.6,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FB),
      appBar: AppBar(
        title: const Text(
          'New Note',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: title,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            decoration: _inputDecoration('Title', hint: 'Give your note a title'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: body,
            textCapitalization: TextCapitalization.sentences,
            maxLines: 10,
            minLines: 6,
            decoration: _inputDecoration('Body', hint: 'Start writing...'),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 52,
            child: ElevatedButton.icon(
              onPressed: _saving ? null : _saveNote,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              icon: _saving
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.check),
              label: Text(
                _saving ? 'Saving...' : 'Save Note',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}