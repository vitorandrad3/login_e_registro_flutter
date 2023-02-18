import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:novo_projeto/pages/home_page.dart';
import 'package:novo_projeto/pages/login_page.dart';
import 'package:novo_projeto/pages/register_page.dart';
import 'package:novo_projeto/pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.outerSpace,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        appBarStyle: FlexAppBarStyle.scaffoldBackground,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          appBarBackgroundSchemeColor: SchemeColor.primary,
          bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
          navigationBarBackgroundSchemeColor: SchemeColor.tertiaryContainer,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.outerSpace,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.primary,
          navigationBarBackgroundSchemeColor: SchemeColor.tertiaryContainer,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      ),
      initialRoute: '/splashPage',
      routes: {
        '/splashPage': (_) => const SplashPage(),
        '/loginPage': (_) => LoginPage(),
        '/homepage': (_) => const Homepage(),
        '/registerpage': (_) => RegisterPage(),
      },
    );
  }
}
