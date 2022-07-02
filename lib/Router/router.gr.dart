// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<LandingRouteArgs>(
          orElse: () =>
              LandingRouteArgs(phone: queryParams.optString('phone')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LandingPage(key: args.key, phone: args.phone));
    }
  };

  @override
  List<RouteConfig> get routes => [RouteConfig(LandingRoute.name, path: '/')];
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<LandingRouteArgs> {
  LandingRoute({Key? key, String? phone})
      : super(LandingRoute.name,
            path: '/',
            args: LandingRouteArgs(key: key, phone: phone),
            rawQueryParams: {'phone': phone});

  static const String name = 'LandingRoute';
}

class LandingRouteArgs {
  const LandingRouteArgs({this.key, this.phone});

  final Key? key;

  final String? phone;

  @override
  String toString() {
    return 'LandingRouteArgs{key: $key, phone: $phone}';
  }
}
