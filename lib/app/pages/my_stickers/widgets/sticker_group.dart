import 'package:flutter/cupertino.dart';

class StickerGroup extends StatelessWidget {
  const StickerGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 64,
              child: OverflowBox(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: ClipRect(
                  child: Align(
                    widthFactor: 1,
                    heightFactor: 0.1,
                    alignment: const Alignment(0, -0.1),
                    child: Image.asset('assets/images/flags/BRA.png',
                    cacheWidth: (MediaQuery.of(context).size.width * 3).toInt(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
