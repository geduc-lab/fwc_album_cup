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
    super.initState();
  }
}
