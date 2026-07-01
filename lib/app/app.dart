import 'package:flutter/material.dart';
import 'app_theme.dart';
import '../screens/editor_screen.dart';

class FamilyTreeDesignerApp extends StatelessWidget {
  const FamilyTreeDesignerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Family Tree Designer",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      home: const EditorScreen(),
    );
  }
}
