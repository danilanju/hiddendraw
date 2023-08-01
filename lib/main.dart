import 'package:flutter/material.dart';
import 'package:sidebar_modern/hidden_drawer.dart';
import 'package:sidebar_modern/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HiddenDrawer(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}
