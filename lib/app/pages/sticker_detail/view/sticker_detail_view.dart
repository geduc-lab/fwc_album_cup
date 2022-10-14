abstract class StickerDetailView {

  void screenLoaded({
    required bool hasSticker,
    required String countryCode,
    required String countryName,
    required String stickerNumber,
    required int amount,
  });

  void updateAmount(int i);

  void showLoader();

  void saveSuccess();

  void error(String s);

}