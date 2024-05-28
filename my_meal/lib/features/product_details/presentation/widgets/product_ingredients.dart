import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductIngredients extends StatelessWidget {
  const ProductIngredients({
    super.key,
    required this.recipe,
  });
  final RecipeResponse recipe;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ingredients',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Column(
            children: List.generate(
              recipe.ingredients!.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimnesions.defaultHorizontalPadding),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${index + 1}. ', style: MyMealStyles().defaultProductPageTextListStyle),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: Dimnesions.minimalPadding),
                            child:
                                Text(recipe.ingredients![index], style: MyMealStyles().defaultProductPageTextListStyle),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
