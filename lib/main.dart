import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'language_model.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LanguageModel inputLanguage = languages[0];
  LanguageModel outputLanguage = languages[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
