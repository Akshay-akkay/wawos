import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'Router/router.dart';
import 'Utilities/utilities.dart';

class Wawos extends StatelessWidget {
  const Wawos({Key? key}) : super(key: key);

  static final _appRouter = AppRouter();
  static final primaryColor =
      WawosMaterialColor.fromColor(const Color(0xff232631));

  @override
  Widget build(BuildContext context) {
    DeviceDimensions.init(ctx: context);
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, widget) {
        DeviceDimensions.init(ctx: context);
        return widget ?? const Placeholder();
      },
      title: 'Wawos',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: primaryColor,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        canvasColor: primaryColor.shade700,
        primaryColorLight: Colors.white,
        primaryColorDark: primaryColor,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: primaryColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          toolbarTextStyle: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
              ),
          titleTextStyle: Theme.of(context).textTheme.headline6?.copyWith(
                color: Colors.white,
              ),
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData().copyWith(
          selectionColor: Colors.white.withOpacity(0.2),
          cursorColor: Colors.white,
          selectionHandleColor: Theme.of(context).primaryColor,
        ),
        scaffoldBackgroundColor: primaryColor.shade800,
        bottomAppBarColor: primaryColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
        dialogBackgroundColor: primaryColor.shade800.withOpacity(0.6),
        useMaterial3: true,
      ),
      themeMode: EasyDynamicTheme.of(context).themeMode,
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
    );
  }
}
