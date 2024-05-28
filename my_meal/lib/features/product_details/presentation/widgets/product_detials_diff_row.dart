import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductDetialsDiffRow extends StatelessWidget {
  const ProductDetialsDiffRow({
    super.key,
    required this.recipe,
  });
  final RecipeResponse recipe;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(Dimnesions.defaultHorizontalPadding),
          Text(
            'Cousine: ${recipe.cuisine}',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Text(
            'Difficulty: ${recipe.difficulty}',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
        ],
      ),
    );
  }
}
