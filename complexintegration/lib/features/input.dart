import 'package:complexintegration/app/core.dart';
import 'package:flutter/material.dart';

import 'styles.dart';

class InputScreeen extends StatefulWidget {
  static const String routePath = '/input';

  static Route<void> route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routePath),
      builder: (_) => const InputScreeen(),
    );
  }

  const InputScreeen({super.key});

  @override
  State<InputScreeen> createState() => _InputScreeenState();
}

class _InputScreeenState extends State<InputScreeen> {
  bool _isLoading = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future<void> fetch() async {
    final data = await Core.service.fetchData();
    if (data != null && data.isNotEmpty) {
      _textEditingController.text = data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Screen'),
      ),
      body: Padding(
        padding: AppStyle.paddingAll16,
        child: Form(
          child: Builder(builder: (context) {
            return _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      TextFormField(
                        key: const Key('input-field'),
                        controller: _textEditingController,
                        validator: (value) {
                          if (value == null) return 'Invalid input';
                          if (value.isEmpty) return 'Invalid input';
                          return null;
                        },
                      ),
                      Padding(
                        padding: AppStyle.paddingAll16,
                        child: ElevatedButton(
                          key: const Key('submit-button'),
                          onPressed: () async {
                            if (!Form.of(context).validate()) return;
                            setState(() {
                              _isLoading = true;
                            });
                            await Core.service.setData(
                              _textEditingController.text,
                            );
                            setState(() {
                              _isLoading = false;
                            });
                            if (mounted) {
                              await showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                  content: Padding(
                                    padding: AppStyle.paddingAll32,
                                    child: Text(
                                      key: Key('submit-results'),
                                      'Request successfull',
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
