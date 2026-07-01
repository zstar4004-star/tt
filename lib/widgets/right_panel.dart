import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      color: Colors.grey.shade850,
      child: const Center(
        child: Text("Inspector"),
      ),
    );
  }
}
