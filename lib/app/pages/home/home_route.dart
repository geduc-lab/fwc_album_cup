import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_cup/app/pages/home/home_page.dart';
import 'package:fwc_album_cup/app/pages/home/presenter/home_presenter.dart';
import 'package:fwc_album_cup/app/pages/home/presenter/home_presenter_impl.dart';
import 'package:fwc_album_cup/app/repository/user/user_repository.dart';
import 'package:fwc_album_cup/app/repository/user/user_repository_impl.dart';

class HomeRoute extends FlutterGetItPageRoute {
  const HomeRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<UserRepository>((instance) => UserRepositoryImpl(dio: instance())),
        Bind.lazySingleton<HomePresenter>((instance) => HomePresenterImpl(userRepository: instance()))
      ];

  @override
  WidgetBuilder get page => (context) => HomePage(
        presenter: context.get(),
      );
}
