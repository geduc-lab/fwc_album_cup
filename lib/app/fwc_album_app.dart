import 'package:fwc_album_cup/app/core/rest/custom_dio.dart';
import 'package:fwc_album_cup/app/core/ui/theme/theme_config.dart';
import 'package:fwc_album_cup/app/pages/auth/login/login_page.dart';
import 'package:fwc_album_cup/app/pages/auth/login/login_route.dart';
import 'package:fwc_album_cup/app/pages/auth/register/register_route.dart';
import 'package:fwc_album_cup/app/pages/home/home_page.dart';
import 'package:fwc_album_cup/app/pages/home/home_route.dart';
import 'package:fwc_album_cup/app/pages/my_stickers/my_stickers_route.dart';
import 'package:fwc_album_cup/app/pages/my_stickers/my_stycker_page.dart';
import 'package:fwc_album_cup/app/pages/splash/splash_route.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/sticker_detail_route.dart';
import 'package:fwc_album_cup/app/repository/auth/auth_repository.dart';
import 'package:fwc_album_cup/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'core/ui/global/global_context.dart';
import 'core/ui/global/global_context_impl.dart';

class FwcAlbumApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  FwcAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
        Bind.lazySingleton<GlobalContext>((i) =>
            GlobalContextImpl(navigatorKey: navigatorKey, authRepository: i())),
      ],
      child: MaterialApp(
        key: navigatorKey,
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginRoute(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomeRoute(),
          '/my-stickers': (_) => const MyStickerRoute(),
          '/sticker-detail': (_) => const StickerDetailRoute(),
        },
      ),
    );
  }
}