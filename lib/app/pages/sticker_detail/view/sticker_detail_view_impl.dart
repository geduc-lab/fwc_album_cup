import 'package:flutter/cupertino.dart';
import 'package:fwc_album_cup/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/sticker_detail_page.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/view/sticker_detail_view.dart';

import '../../../core/ui/helpers/loader.dart';

abstract class StickerDetailViewImpl extends State<StickerDetailPage>
    with Messages<StickerDetailPage>, Loader<StickerDetailPage>
    implements StickerDetailView {

  bool hasSticker = true;
  String countryCode = '';
  String countryName = '';
  String stickerNumber = '';
  int amount = 0;

  @override
  void initState() {
    widget.presenter.view = this;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showLoader ();
      var arguments = ModalRoute.of(context)!.settings.arguments;

      if (arguments != null && arguments is Map<String, dynamic>) {
        var args = arguments as Map<String, dynamic>;
        widget.presenter.load(

          countryCode: arguments['countryCode'],
          countryName: arguments['countryName'],
          stickerNumber: arguments['stickerNumber'],
          stickerUser: arguments['stickerUser'],

        );
      }
      else {
        hideLoader();
        Navigator.of(context).pop();
        showError('Não foi possível carregar a figurinha');
      }


    });
    super.initState();
  }

  @override
  void screenLoaded({
    required bool hasSticker,
    required String countryCode,
    required String countryName,
    required String stickerNumber,
    required int amount,
  }) {
    hideLoader();
    setState(() {
      this.hasSticker = hasSticker;
      this.countryCode = countryCode;
      this.countryName = countryName;
      this.stickerNumber = stickerNumber;
      this.amount = amount;
    });
  }
}
