import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nipuna_app/app/config/routes/path_root.dart';
import 'package:nipuna_app/app/core/utils/error_screen.dart';
import 'package:nipuna_app/feature/home_page/presentation/screen/homepage.dart';
import 'package:nipuna_app/feature/home_page/presentation/screen/product_detail_page.dart';
import 'package:nipuna_app/feature/splash/presentation/screen/splash_screen.dart';

class AppRouter {
  static final key = GlobalKey<NavigatorState>();
  static final router = GoRouter(
    initialLocation: Paths.splashRoute.path,
    navigatorKey: key,
    debugLogDiagnostics: kReleaseMode ? false : true,
    routes: [
      GoRoute(
        path: Paths.splashRoute.path,
        name: Paths.splashRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: Paths.homePageScreenRoute.path,
        name: Paths.homePageScreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const HomePage(),
        ),
      ),
      GoRoute(
        path: Paths.productDetailScreenRoute.path,
        name: Paths.productDetailScreenRoute.routeName,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const ProductDetailPage(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const ErrorScreen(),
    redirect: (BuildContext context, GoRouterState state) async {
      return null;
    },
  );
}

class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
            child: child,
          ),
        );
}
