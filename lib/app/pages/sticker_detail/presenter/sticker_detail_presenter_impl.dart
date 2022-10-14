import 'package:fwc_album_cup/app/models/user_sticker_model.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:fwc_album_cup/app/services/sticker/find_sticker_service.dart';

import '../../../models/sticker_model.dart';
import '../view/sticker_detail_view.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late final StickerDetailView _view;
  final FindStickerService findStickerService;
  UserStickerModel? stickerUser;
  StickerModel? sticker;
  int amount = 0;

  StickerDetailPresenterImpl({
    required this.findStickerService,
  });

  @override
  set view(StickerDetailView view) => _view = view;

  @override
  Future<void> load(
      {required String countryCode,
      required String countryName,
      required String stickerNumber,
      UserStickerModel? stickerUser}) async {



    this.stickerUser = stickerUser;
    if  ( stickerUser == null)
      {
        sticker =  await findStickerService.execute(countryCode, stickerNumber);

      }

    bool hasSticker = sticker != null;


    if (hasSticker) {
      amount = stickerUser!.duplicate + 1;
    }

    _view.screenLoaded(
        hasSticker: hasSticker,
        countryCode: countryCode,
        countryName: countryName,
        stickerNumber: stickerNumber,
        amount: amount);
  }
}
