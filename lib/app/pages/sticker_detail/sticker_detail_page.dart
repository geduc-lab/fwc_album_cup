import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fwc_album_cup/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_cup/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_cup/app/core/ui/widgets/button.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/view/sticker_detail_view_impl.dart';

import '../../core/ui/widgets/rounded_button.dart';

class StickerDetailPage extends StatefulWidget {

   final StickerDetailPresenter presenter;

  const StickerDetailPage({super.key, required this.presenter}) ;

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends StickerDetailViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sticker Detail'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                hasSticker ? 'assets/images/sticker.png' : 'assets/images/sticker_pb.png',
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('BRA 17 ',
                        style: context.textStyles.textPrimaryFontBold
                            .copyWith(fontSize: 22)),
                  ),
                  const Spacer(),
                  RoundedButton(
                    onPressed: () {},
                    icon: Icons.remove,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('1',
                        style: context.textStyles.textSecondaryFontMedium),
                  ),
                  RoundedButton(
                    onPressed: () {},
                    icon: Icons.add,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Text('Brasil',
                      style: context.textStyles.textPrimaryFontRegular
                        )),

              Button.primary(
                width: MediaQuery.of(context).size.width * .9,
                onPressed: () {},
                label: 'Adicionar figurinha',
              ),
              Button(
                onPressed: () {},
                label: 'Excluir figurinha',
                outline: true,
                style:context.buttonStyles.primaryOutlineButton,
                labelStyle: context.textStyles.textSecondaryExtraBoldPrimaryColor,
                width: MediaQuery.of(context).size.width * .9,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
