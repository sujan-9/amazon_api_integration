import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/init/app_init.dart';
import 'package:nipuna_app/app/init/my_app.dart';

void main() {
  initializeApp();
}

initializeApp() async {
  runZonedGuarded(
    () async {
      await AppInit.initialize();
      runApp(const ProviderScope(child: MyApp()));
    },
    (error, stack) {},
  );
}
