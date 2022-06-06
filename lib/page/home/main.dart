import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageHome extends ConsumerStatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  createState() => _PageHome();
}

class _PageHome extends ConsumerState<PageHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('test'),
          ],
        ),
      ),
    );
  }
}
