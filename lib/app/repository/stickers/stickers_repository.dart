import 'package:fwc_album_cup/app/models/groups_stickers_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
}