import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(path: '/home', page: Home.page, initial: true),
        AutoRoute(path: '/dashboard', page: Dashboard.page),
      ];
}
