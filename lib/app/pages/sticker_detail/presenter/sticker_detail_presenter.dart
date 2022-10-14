import 'package:fwc_album_cup/app/models/user_sticker_model.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/view/sticker_detail_view.dart';

import '../../../core/mvp/app_presenter.dart';

abstract class StickerDetailPresenter extends AppPresenter<StickerDetailView> {
  Future<void> load({
    required String countryCode,
    required String countryName,
    required String stickerNumber,
    UserStickerModel? stickerUser,
  });

  void incrementAmount();

  void decrementAmount();


  Future<void> saveSticker();

  Future<void> deleteSticker();
}
