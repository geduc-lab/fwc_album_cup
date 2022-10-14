import 'package:fwc_album_cup/app/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:fwc_album_cup/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:fwc_album_cup/app/repository/stickers/stickers_repository.dart';

import '../../../core/mvp/app_presenter.dart';
import '../../../models/groups_stickers_model.dart';

class MyStickersPresenterImpl implements MyStickersPresenter {
  final StickersRepository stickersRepository;
  late MyStickersView _view;
  var album = <GroupsStickers>[];
  var statusSelected = 'all';
  List<String>? countries;



  MyStickersPresenterImpl({
    required this.stickersRepository,
  });

  @override
  Future<void> getMyAlbum() async {
    album = await stickersRepository.getMyAlbum();
    _view.loadedPage([...album]);
  }

  @override
  set view(MyStickersView view) => _view = view;

  @override
  Future<void> statusFilter(String status) async {
    statusSelected = status;
    _view.updateStatusFilter(status);
  }

  @override
  void countryFilter(List<String>? countries) {
    this.countries = countries;
    if (countries == null) {
      _view.updateAlbum(album);
    } else {
      final albumFilter = [
        ...album.where((element) => countries.contains(element.countryCode))
      ];
      _view.updateAlbum(albumFilter);
    }
  }
}