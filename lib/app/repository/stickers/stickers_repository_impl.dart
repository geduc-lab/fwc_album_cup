import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fwc_album_cup/app/core/rest/custom_dio.dart';
import 'package:fwc_album_cup/app/models/register_sticker_model.dart';
import 'package:fwc_album_cup/app/models/sticker_model.dart';
import 'package:fwc_album_cup/app/repository/stickers/stickers_repository.dart';

import '../../core/exceptions/repository_exception.dart';
import '../../models/groups_stickers_model.dart';

class StickersRepositoryImpl implements StickersRepository {
  final CustomDio dio;

  StickersRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<GroupsStickers>> getMyAlbum() async {
    try {
      final result = await dio.auth().get('/api/countries');
      return result.data
          .map<GroupsStickers>((g) => GroupsStickers.fromMap(g))
          .toList();
    } on DioError catch (e, s) {
      log('Error fetching user album', error: e, stackTrace: s);
      throw RepositoryException(message: 'Error fetching user album');
    }
  }

  @override
  Future<StickerModel?> findStickerByCode(
      String stickerCode, String stickerNumber) async {
    try {
      final result =
          await dio.auth().get('/api/stickers-search', queryParameters: {
        'sticker-code': stickerCode,
        'sticker-number': stickerNumber,
      });

      return StickerModel.fromMap(result.data);
    } on DioError catch (e, s) {
      if (e.response?.statusCode == 404) {
        return null;
      } else {
        log('Error fetching sticker by code', error: e, stackTrace: s);
        throw RepositoryException(message: 'Error fetching sticker by code');
      }
    }
  }

  @override
  Future<StickerModel> create(RegisterStickerModel registerStickerModel) async {

    try {
      final body = FormData.fromMap(
          {...registerStickerModel.toMap(), 'sticker_image_upload': '',});

      final result = await dio.auth().post('/api/sticker', data: body);
      return StickerModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Error creating sticker', error: e, stackTrace: s);
      throw RepositoryException(message: 'Error creating sticker');
    }
  }
}
