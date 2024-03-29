import 'package:flutter/cupertino.dart';
import 'package:fwc_album_cup/app/repository/auth/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../styles/colors_app.dart';
import 'global_context.dart';

class GlobalContextImpl implements GlobalContext {

  final GlobalKey<NavigatorState> navigatorKey;
  final AuthRepository authRepository;

  GlobalContextImpl({
    required this.navigatorKey,
    required this.authRepository,
  });

  @override
Future<void> loginExpired()  async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    showTopSnackBar(
      navigatorKey.currentState!.context,
       CustomSnackBar.error(
        backgroundColor: ColorsApp.instance.primary,
        message: 'Login expirado',

      ),
      overlayState: navigatorKey.currentState!.overlay!,
    );
    navigatorKey.currentState!.pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }
}