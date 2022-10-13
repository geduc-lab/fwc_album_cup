import 'package:fwc_album_cup/app/core/mvp/app_presenter.dart';
import 'package:fwc_album_cup/app/pages/auth/register/view/register_view.dart';

abstract class RegisterPresenter extends AppPresenter<RegisterView> {

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  });

}