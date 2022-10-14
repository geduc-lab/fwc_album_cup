import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_cup/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_cup/app/core/ui/styles/text_styles.dart';

import 'colors_app.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  // Avoid self isntance
  ButtonStyles._();

  static ButtonStyles get i {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle:
      TextStyles.i.textSecondaryExtraBold.copyWith(fontSize: 14));

  ButtonStyle get yellowOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.instance.yellow),
      textStyle:
      TextStyles.i.textSecondaryExtraBold.copyWith(fontSize: 14));

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.instance.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      textStyle:
      TextStyles.i.textSecondaryExtraBold.copyWith(fontSize: 14));

  ButtonStyle get primaryOutlineButton => OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      side: BorderSide(color: ColorsApp.instance.primary),
      textStyle:
      TextStyles.i.textSecondaryExtraBold.copyWith(fontSize: 14));
}

extension ButtonStylesExtensiosions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.i;
}
