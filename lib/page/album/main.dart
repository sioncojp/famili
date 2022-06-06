import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageAlbum extends HookConsumerWidget {
  const PageAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("album"),
      ),
      body: const Center(
        child: Text('album'),
      ),
    );
  }
}