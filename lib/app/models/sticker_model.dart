import 'dart:convert';

class StickerModel {
  final int id;
  final String stickerNumber;
  final Null stickerName;
  final String stickerCode;
  final Null stickerImage;

  StickerModel({
    required this.id,
    required this.stickerNumber,
    required this.stickerName,
    required this.stickerCode,
    required this.stickerImage,
  });



  factory StickerModel.fromMap(Map<String, dynamic> map) {
    return StickerModel(
      id: map['id'],
      stickerNumber: map['sticker_number'],
      stickerName: map['sticker_name'],
      stickerCode: map['sticker_code'],
      stickerImage: map['sticker_image'],
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sticker_number': stickerNumber,
      'sticker_name': stickerName,
      'sticker_code': stickerCode,
      'sticker_image': stickerImage,
    };
  }


String toJSon() => json.encode(toMap());

factory StickerModel.fromJson(String source) => StickerModel.fromMap(json.decode(source));

}


