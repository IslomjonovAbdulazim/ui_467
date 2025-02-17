import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'language_model.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
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
      home: HomePage(),
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton<LanguageModel>(
              value: inputLanguage,
              onChanged: (value) {
                if (value == null) return;
                inputLanguage = value;
                setState(() {});
              },
              items: languages
                  .map(
                    (lan) => DropdownMenuItem<LanguageModel>(
                      value: lan,
                      child: Text(lan.name),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
