import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/features/product_details/presentation/widgets/helpers/product_star_rating.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/styles.dart';

class ProductRatingRow extends StatelessWidget {
  const ProductRatingRow({
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
          Text(
            'Rating: ${recipe.rating}',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.verySmallPadding),
          Text(
            '(${recipe.reviewCount})',
            style: MyMealStyles().defaultProductPageTitleStyle,
          ),
          const Gap(Dimnesions.defaultHorizontalPadding),
          StarRating(rating: recipe.rating!),
        ],
      ),
    );
  }
}
