import 'package:flutter/material.dart';
import 'package:sqflite_app/screens/add_note.dart';
import 'package:sqflite_app/screens/db/db.dart';
import 'package:sqflite_app/screens/models/model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyDb db = MyDb();

  // Soft pastel colors for note cards
  final List<Color> _cardColors = const [
    Color(0xFFFFF3B0),
    Color(0xFFCDEAC0),
    Color(0xFFBDE0FE),
    Color(0xFFFFC8DD),
    Color(0xFFE2CFEA),
  ];

  Future<void> _openAddNote() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddNote()),
    );
    // Refresh the list when coming back
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7FB),
      appBar: AppBar(
        title: const Text(
          'My Notes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black87,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _openAddNote,
        icon: const Icon(Icons.add),
        label: const Text('New Note'),
      ),
      body: FutureBuilder<List<NoteModel>>(
        future: db.getNotes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final notes = snapshot.data ?? [];

          if (notes.isEmpty) {
            return _buildEmptyState();
          }

          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 90),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final note = notes[index];
              final color = _cardColors[index % _cardColors.length];
              return _buildNoteCard(note, color);
            },
          );
        },
      ),
    );
  }

  Widget _buildNoteCard(NoteModel note, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        title: Text(
          note.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.black87,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            note.body,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black54, height: 1.3),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.note_alt_outlined, size: 80, color: Colors.grey.shade400),
          const SizedBox(height: 16),
          Text(
            'No notes yet',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Tap "New Note" to create your first one',
            style: TextStyle(color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }
}