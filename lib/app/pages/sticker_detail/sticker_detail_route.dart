
import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/presenter/sticker_detail_presenter_impl.dart';
import 'package:fwc_album_cup/app/pages/sticker_detail/sticker_detail_page.dart';

class StickerDetailRoute extends FlutterGetItPageRoute {
  const StickerDetailRoute({ super.key});
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<StickerDetailPresenter>((instance) => StickerDetailPresenterImpl()),
      ];


  @override
  WidgetBuilder get page => (context) => StickerDetailPage( presenter: context.get(),);
}
