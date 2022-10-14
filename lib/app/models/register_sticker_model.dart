import 'dart:convert';

class RegisterStickerModel {
  final String name;
  final String stickerNumber;
  final String stickerCode;

  RegisterStickerModel({
    required this.name,
    required this.stickerNumber,
    required this.stickerCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'sticker_number': stickerNumber,
      'sticker_code': stickerCode,
    };
  }

  String toJSon() => json.encode(toMap());

  factory RegisterStickerModel.fromMap(Map<String, dynamic> map) {
    return RegisterStickerModel(
      name: map['name'],
      stickerNumber: map['sticker_number'],
      stickerCode: map['sticker_code'],
    );
  }
}