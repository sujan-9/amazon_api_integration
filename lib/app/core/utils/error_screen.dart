import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nipuna_app/app/core/common_widgets/text_widgets.dart';
import 'package:nipuna_app/app/core/constants/app_strings.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 70),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '404 Page not found !',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.error),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: buildBodyText(AppStrings.returnHome))
            ]),
      ),
    );
  }
}
