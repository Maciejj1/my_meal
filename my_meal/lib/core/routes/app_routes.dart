import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meal/features/dashboard/presentation/dashboard_screen.dart';
import 'package:my_meal/features/product_details/presentation/product_details_screen.dart';
import 'package:my_meal/features/splash_screen/splash_screen.dart';

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),
  dashboard("/dashboard"),
  productDetails("dashboard/:id");

  const Routes(this.path);
  final String path;
}

class AppRoute {
  static late BuildContext context;
  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }
  static final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: Routes.root.path,
          name: Routes.root.name,
          redirect: (_, __) => Routes.splashScreen.path,
        ),
        GoRoute(
          path: Routes.splashScreen.path,
          name: Routes.splashScreen.name,
          pageBuilder: (BuildContext context, GoRouterState state) => const NoTransitionPage(
            child: SplashScreen(),
          ),
        ),
        GoRoute(
            path: Routes.dashboard.path,
            name: Routes.dashboard.name,
            pageBuilder: (BuildContext context, GoRouterState state) => const NoTransitionPage(
                  child: DashboardScreen(),
                ),
            routes: [
              GoRoute(
                path: Routes.productDetails.path,
                name: Routes.productDetails.name,
                pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage(
                  child: ProductDetailsScreen(
                    id: state.pathParameters['id']!,
                  ),
                ),
              ),
            ]),
      ],
      initialLocation: Routes.splashScreen.path,
      routerNeglect: true,
      debugLogDiagnostics: kDebugMode,
      redirect: (_, GoRouterState state) async {
        return null;
      });
  static GoRouter get gorouter => router;
}
