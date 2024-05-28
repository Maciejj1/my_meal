import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductMealType extends StatelessWidget {
  const ProductMealType({
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
            'Meal Type',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(recipe.mealType!.length, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimnesions.minimalPadding),
                child: Container(
                  color: Colors.amberAccent,
                  padding: const EdgeInsets.all(Dimnesions.minimalPadding),
                  child: Text(
                    recipe.mealType![index],
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
