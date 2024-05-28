import 'package:flutter/material.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
    required this.bannerText,
    required this.bannerImage,
    this.isProductPage,
  });
  final String bannerText;
  final String bannerImage;
  final bool? isProductPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: isProductPage! ? Dimnesions.default500 : Dimnesions.default200,
      decoration: BoxDecoration(
          image: isProductPage!
              ? DecorationImage(
                  image: NetworkImage(bannerImage),
                  fit: BoxFit.cover,
                )
              : DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(bannerImage),
                )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimnesions.defaultHorizontalPadding),
              child: isProductPage!
                  ? Container(
                      padding: const EdgeInsets.all(Dimnesions.minimalPadding),
                      color: ColorPalette.defaultBannerContainerColor,
                      child: Text(
                        bannerText,
                        textAlign: TextAlign.center,
                        style: MyMealStyles().defaultBannerTextStyleForProducts,
                      ),
                    )
                  : Text(bannerText, textAlign: TextAlign.center, style: MyMealStyles().defaultBannerTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
