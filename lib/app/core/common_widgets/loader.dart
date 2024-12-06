import 'package:flutter/material.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorConstants.primaryColor,
      ),
    );
  }
}
