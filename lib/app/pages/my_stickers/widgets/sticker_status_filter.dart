import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_cup/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_cup/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_cup/app/core/ui/widgets/button.dart';

class StickerStatusFilter extends StatelessWidget {
  final String filterSelected;

  const StickerStatusFilter({
    super.key,
    required this.filterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
            children: [
          Button(
            width: MediaQuery.of(context).size.width * .3,
            onPressed: () {},
            style: context.buttonStyles.yellowButton,
            label: 'Todas',
            labelStyle: context.textStyles.textSecondaryFontMedium.copyWith(
              color: context.colors.primary,
            ),
          ),
          Button(
            width: MediaQuery.of(context).size.width * .3,
            onPressed: () {},
            style: context.buttonStyles.primaryButton,
            label: 'Faltando',
            labelStyle: context.textStyles.textSecondaryFontMedium,
            ),
          Button(
            width: MediaQuery.of(context).size.width * .3,
            onPressed: () {},
            style: context.buttonStyles.primaryButton,
            label: 'Repetidas',
            labelStyle: context.textStyles.textSecondaryFontMedium,
          ),
        ]),

    );
  }
}