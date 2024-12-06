import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/config/routes/router.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/product_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          ref.read(productNotifierProvider.notifier).fetchProducts();
          AppRouter.router.push('/homePageScreen');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ColorConstants.primaryColor,
        body: Center(
          child: CircularProgressIndicator(
            color: ColorConstants.white,
          ),
        ));
  }
}
