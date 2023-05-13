import 'package:flutter/material.dart';

import 'styles.dart';
import 'input.dart';
import 'scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Integration Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: AppStyle.paddingAll8,
              child: IconButton(
                key: const Key('nav-to-scroll-scr'),
                onPressed: () => Navigator.push(context, ScrollScreeen.route()),
                icon: const Icon(Icons.swipe_up),
                style: primaryIconButtonStyle,
              ),
            ),
            Padding(
              padding: AppStyle.paddingAll8,
              child: IconButton(
                key: const Key('nav-to-input-scr'),
                onPressed: () => Navigator.push(context, InputScreeen.route()),
                icon: const Icon(Icons.input),
                style: primaryIconButtonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
