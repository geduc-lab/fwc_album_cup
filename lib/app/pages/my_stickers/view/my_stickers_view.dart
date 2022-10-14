import 'package:fwc_album_cup/app/models/groups_stickers_model.dart';


abstract class MyStickersView {
  void loadedPage(List<GroupsStickers> album);
  void error(String message);
  void updateStatusFilter(status);
  void updateAlbum(List<GroupsStickers> album);
  void showLoader();
}