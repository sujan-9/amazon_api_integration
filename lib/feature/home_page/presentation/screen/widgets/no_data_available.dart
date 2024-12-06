import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/core/common_widgets/text_widgets.dart';
import 'package:nipuna_app/app/core/constants/app_strings.dart';
import 'package:nipuna_app/app/core/constants/path_constant.dart';

class NoDataAvailable extends ConsumerWidget {
  const NoDataAvailable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            PathConstants.noDataImage,
            fit: BoxFit.contain,
            //  color: ColorConstants.backgroundColor,
          ),
          const SizedBox(
            height: 12,
          ),
          buildHeaderText(text: AppStrings.noDataAvailable, fontSize: 16)
        ],
      ),
    );
  }
}
