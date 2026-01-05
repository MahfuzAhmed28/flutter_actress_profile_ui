import 'package:flutter/material.dart';
import 'package:flutter_actress_profile_ui/home_screen.dart';

class ActressProfileUi extends StatefulWidget {
  const ActressProfileUi({super.key});

  @override
  State<ActressProfileUi> createState() => _ActressProfileUiState();
}

class _ActressProfileUiState extends State<ActressProfileUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
