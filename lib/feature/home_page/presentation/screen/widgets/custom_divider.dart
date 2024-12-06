import 'package:flutter/material.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorConstants.grey,
      thickness: 1,
    );
  }
}
