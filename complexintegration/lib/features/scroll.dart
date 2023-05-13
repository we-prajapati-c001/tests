import 'package:flutter/material.dart';

import 'styles.dart';

class ScrollScreeen extends StatelessWidget {
  static const String routePath = '/scroll';

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routePath),
      builder: (_) => const ScrollScreeen(),
    );
  }

  const ScrollScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Screen'),
      ),
      body: Padding(
        padding: AppStyle.paddingAll16,
        child: ListView.builder(
          itemCount: testList.length,
          itemBuilder: (context, index) => Padding(
            padding: AppStyle.paddingAll4,
            child: ListTile(
              key: Key(testList[index].replaceAll(' ', '-')),
              title: Text(testList[index]),
            ),
          ),
        ),
      ),
    );
  }
}

const List<String> testList = [
  'test one',
  'test two',
  'test three',
  'test four',
  'test five',
  'test six',
  'test seven',
  'test eight',
  'test nine',
  'test ten',
  'test eleven',
  'test twelve',
  'test thirteen',
  'test fourteen',
  'test fifteen',
  'test sixteen',
  'test seventeen',
  'test eighteen',
  'test nineteen',
  'test twenty',
  'test twenty one',
  'test twenty two',
  'test twenty three',
  'test twenty four',
  'test twenty five',
  'test twenty six',
  'test twenty seven',
  'test twenty eight',
  'test twenty nine',
  'test thirty',
  'test thirty one',
  'test thirty two',
  'test thirty three',
  'test thirty four',
  'test thirty five',
  'test thirty six',
  'test thirty seven',
  'test thirty eight',
  'test thirty nine',
  'test forty',
  'test forty one',
  'test forty two',
  'test forty three',
  'test forty four',
  'test forty five',
  'test forty six',
  'test forty seven',
  'test forty eight',
  'test forty nine',
  'test fifty',
];
