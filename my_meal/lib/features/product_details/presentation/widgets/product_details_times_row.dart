import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductDetailsTimesRow extends StatelessWidget {
  const ProductDetailsTimesRow({
    super.key,
    required this.recipe,
  });
  final RecipeResponse recipe;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: Dimnesions.defaultHorizontalPadding,
        runSpacing: Dimnesions.defaultHorizontalPadding,
        children: [
          Text(
            'Prep Time: ${recipe.prepTimeMinutes} minutes',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Text(
            'Cook Time: ${recipe.cookTimeMinutes} minutes',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Text(
            'Servings: ${recipe.servings}',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Text(
            'Calories per serving: ${recipe.caloriesPerServing}',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
        ],
      ),
    );
  }
}
