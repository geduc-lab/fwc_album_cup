import 'dart:convert';

class StickerModel {
  final int id;
  final String stickerNumber;
  final String stickerName;
  final String stickerCode;
  final String stickerImage;

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
      stickerNumber: map['sticker-number'],
      stickerName: map['sticker-name'],
      stickerCode: map['sticker-code'],
      stickerImage: map['sticker-image'],
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sticker-number': stickerNumber,
      'sticker-name': stickerName,
      'sticker-code': stickerCode,
      'sticker-image': stickerImage,
    };
  }


String toJSon() => json.encode(toMap());

factory StickerModel.fromJson(String source) => StickerModel.fromMap(json.decode(source));

}


