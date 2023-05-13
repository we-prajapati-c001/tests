import 'package:flutter/material.dart';

import 'styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Integration Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: AppStyle.paddingAll8,
              child: Text(
                key: const Key('counter'),
                '$_counter',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: AppStyle.primaryColor),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Padding(
                  padding: AppStyle.paddingAll8,
                  child: IconButton(
                    key: const Key('decrement'),
                    onPressed: _decrementCounter,
                    icon: const Icon(Icons.remove),
                    style: primaryIconButtonStyle,
                  ),
                ),
                Padding(
                  padding: AppStyle.paddingAll8,
                  child: IconButton(
                    key: const Key('increment'),
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.add),
                    style: primaryIconButtonStyle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
