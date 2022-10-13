import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/core/theme/theme_config.dart';
import 'package:fwc_album_cup/app/pages/splash/splash_page.dart';

class FwcAlbumApp extends StatefulWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  State<FwcAlbumApp> createState() => _FwcAlbumAppState();
}

class _FwcAlbumAppState extends State<FwcAlbumApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup Album',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashPage(),

      }
    );
  }
}
