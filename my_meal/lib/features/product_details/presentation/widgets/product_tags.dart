import 'package:flutter/material.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductTags extends StatelessWidget {
  const ProductTags({
    super.key,
    required this.recipe,
  });
  final RecipeResponse recipe;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Tags',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const SizedBox(height: Dimnesions.defaultHorizontalPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(recipe.tags!.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimnesions.minimalPadding),
                child: Container(
                  color: Colors.amberAccent,
                  padding: const EdgeInsets.all(Dimnesions.minimalPadding),
                  child: Text(
                    recipe.tags![index],
                    style: TextStyle(color: ColorPalette.defaultAppBarText),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
