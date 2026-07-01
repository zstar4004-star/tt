import 'package:flutter/material.dart';

class TopToolbar extends StatelessWidget {
  const TopToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey.shade900,
      child: Row(
        children: const [
          SizedBox(width: 16),
          Text(
            "Family Tree Designer",
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          Icon(Icons.undo),
          SizedBox(width: 12),
          Icon(Icons.redo),
          SizedBox(width: 12),
          Icon(Icons.save),
          SizedBox(width: 12),
          Icon(Icons.folder_open),
          SizedBox(width: 12),
          Icon(Icons.image),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
