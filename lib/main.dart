import 'dart:async';

import 'package:app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // debugPaintBaselinesEnabled = true;
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  runApp(const ProviderScope(child: App()));
}