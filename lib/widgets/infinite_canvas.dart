import 'package:flutter/material.dart';

class InfiniteCanvas extends StatelessWidget {
  const InfiniteCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1b1b1b),
      child: const Center(
        child: Text(
          "Infinite Canvas",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
