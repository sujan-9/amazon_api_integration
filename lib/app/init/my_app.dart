import 'package:flutter/material.dart';
import 'package:nipuna_app/app/core/utils/size_config.dart';
import '../config/routes/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig config = SizeConfig();
    config.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
