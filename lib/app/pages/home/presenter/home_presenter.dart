
import 'package:fwc_album_cup/app/pages/home/view/home_view.dart';

import '../../../core/mvp/app_presenter.dart';

abstract class HomePresenter extends AppPresenter<HomeView> {
  Future<void> getUserData();
  Future<void> logout();
}
