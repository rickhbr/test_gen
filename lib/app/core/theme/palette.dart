import "package:flutter/material.dart";

class GrayTone {
  /// #B9B9B9 ![](https://dummyimage.com/24/B9B9B9.png&text=+)
  final colorGray01 = const Color.fromRGBO(185, 185, 185, 1);

  /// #DBDBDB ![](https://dummyimage.com/24/DBDBDB.png&text=+)
  final colorGray02 = const Color.fromRGBO(219, 219, 219, 1);

  /// #A5A5A5 ![](https://dummyimage.com/24/A5A5A5.png&text=+)
  final colorGray03 = const Color.fromRGBO(165, 165, 165, 1);

  /// #939393 ![](https://dummyimage.com/24/939393.png&text=+)
  final colorGray04 = const Color.fromRGBO(147, 147, 147, 1);

  /// #4F4F4F ![](https://dummyimage.com/24/939393.png&text=+)
  final colorGray05 = const Color.fromRGBO(79, 79, 79, 1);

  /// #B0B0B0 ![](https://dummyimage.com/24/B0B0B0.png&text=+)
  final colorGray06 = const Color.fromRGBO(176, 176, 176, 1);

  /// #EEEEEE ![](https://dummyimage.com/24/EEEEEE.png&text=+)
  final colorGray07 = const Color.fromRGBO(238, 238, 238, 1);

  /// #969696 ![](https://dummyimage.com/24/969696.png&text=+)
  final colorGray08 = const Color.fromRGBO(150, 150, 150, 1);

  /// #707585 ![](https://dummyimage.com/24/707585.png&text=+)
  final colorGray09 = const Color.fromRGBO(112, 117, 133, 1);

  /// #B9BECC ![](https://dummyimage.com/24/B9BECC.png&text=+)
  final colorGray10 = const Color.fromRGBO(185, 190, 204, 1);

  /// #E1E5F0 ![](https://dummyimage.com/24/E1E5F0.png&text=+)
  final colorGray11 = const Color.fromRGBO(225, 229, 240, 1);

  /// #797979 ![](https://dummyimage.com/24/797979.png&text=+)
  final colorGray12 = const Color.fromRGBO(121, 121, 121, 1);
}

class BlackTone {
  /// #434343 ![](https://dummyimage.com/24/434343.png&text=+)
  final colorBlack01 = const Color.fromRGBO(67, 67, 67, 1);

  /// #282828 ![](https://dummyimage.com/24/282828.png&text=+)
  final colorBlack02 = const Color.fromRGBO(40, 40, 40, 1);

  /// #575757 ![](https://dummyimage.com/24/575757.png&text=+)
  final colorBlack03 = const Color.fromRGBO(87, 87, 87, 1);
}

class ShadowColors {
  final shadow01 = const Color.fromRGBO(24, 39, 75, 1).withOpacity(0.06);

  final shadow02 = const Color.fromRGBO(24, 39, 75, 1).withOpacity(0.08);
}

class Palette {
  /// #0052FE ![](https://dummyimage.com/24/0052FE.png&text=+)
  final primaryText = const Color.fromRGBO(0, 82, 254, 1);

  /// #EEF2F5 ![](https://dummyimage.com/24/EEF2F5.png&text=+)
  final primaryBackground = const Color.fromRGBO(238, 242, 245, 1);

  /// #F9F9F9 ![](https://dummyimage.com/24/F9F9F9.png&text=+)
  final secondaryBackground = const Color.fromRGBO(249, 249, 249, 1);

  /// #00000029 ![](https://dummyimage.com/24/#00000029.png&text=+)
  final shadow = const Color.fromRGBO(0, 0, 0, 0.16);

  /// Variant colors of gray
  final grayTone = GrayTone();

  /// Variant colors of black
  final blackTone = BlackTone();

  final shadowColors = ShadowColors();
}
