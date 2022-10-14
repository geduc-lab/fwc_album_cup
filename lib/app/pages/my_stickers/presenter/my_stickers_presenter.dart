import 'package:fwc_album_cup/app/pages/my_stickers/view/my_stickers_view.dart';

import '../../../core/mvp/app_presenter.dart';

abstract class MyStickersPresenter extends AppPresenter<MyStickersView> {
  Future<void> getMyAlbum();
  Future<void> statusFilter(String status);
  void countryFilter(List<String>? countries);
}