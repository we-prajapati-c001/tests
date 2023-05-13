import 'package:flutter/material.dart';

import '../features/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Integration Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(
          backgroundColor: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ).inversePrimary,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
