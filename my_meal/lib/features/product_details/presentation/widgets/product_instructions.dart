import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductInstructions extends StatelessWidget {
  const ProductInstructions({
    super.key,
    required this.recipe,
  });
  final RecipeResponse recipe;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            'Instructions',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(recipe.instructions!.length, (index) {
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
                              Text(recipe.instructions![index], style: MyMealStyles().defaultProductPageTextListStyle),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
