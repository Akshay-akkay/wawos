import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../Screens/barrel.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: LandingPage,
      path: '/',
      initial: true,
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
