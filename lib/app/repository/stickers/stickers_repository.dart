import 'package:fwc_album_cup/app/models/groups_stickers_model.dart';
import 'package:fwc_album_cup/app/models/sticker_model.dart';

import '../../models/register_sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
  Future<StickerModel?> findStickerByCode(String stickerCode, String stickerNumber);
  Future<StickerModel>create(RegisterStickerModel registerStickerModel);

  Future<void> registerUserSticker(int stickerId, int amount);
  Future<void> updateUserSticker(int stickerId, int amount);
}