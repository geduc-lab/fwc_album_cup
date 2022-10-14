

 import 'package:fwc_album_cup/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';

import '../view/sticker_detail_view.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {

  late final  StickerDetailView _view;
  @override
  set view(StickerDetailView view) => _view = view;
}