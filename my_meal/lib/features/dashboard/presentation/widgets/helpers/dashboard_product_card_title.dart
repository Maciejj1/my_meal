import 'package:flutter/material.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/styles.dart';

class DashboardProductCardTitle extends StatelessWidget {
  const DashboardProductCardTitle({
    super.key,
    required this.product,
  });

  final RecipeResponse product;

  @override
  Widget build(BuildContext context) {
    return Text(product.name!, style: MyMealStyles().defaultProductPageTitleStyle);
  }
}
