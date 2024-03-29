import 'package:fwc_album_cup/app/models/user_model.dart';

abstract class HomeView {

  void updateUser(UserModel user);
  void error(String message);
  void showLoader();
  void logoutSuccess();
  
}
