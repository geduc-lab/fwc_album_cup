import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/core/theme/theme_config.dart';
import 'package:fwc_album_cup/app/pages/splash/splash_page.dart';
import 'package:fwc_album_cup/app/pages/splash/splash_route.dart';

class CopaAlbumApp extends StatelessWidget {
  const CopaAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álbum da copa 2022',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashRoute(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
