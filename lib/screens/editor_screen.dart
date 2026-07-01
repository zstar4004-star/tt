import 'package:flutter/material.dart';

import '../widgets/top_toolbar.dart';
import '../widgets/left_panel.dart';
import '../widgets/right_panel.dart';
import '../widgets/infinite_canvas.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopToolbar(),
          Expanded(
            child: Row(
              children: [
                const LeftPanel(),
                const Expanded(
                  child: InfiniteCanvas(),
                ),
                const RightPanel(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
