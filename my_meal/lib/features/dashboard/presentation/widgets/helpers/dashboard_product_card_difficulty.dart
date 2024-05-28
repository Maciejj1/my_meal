import 'package:flutter/material.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';

import '../../../../../utils/resources/styles.dart';

class DashboardProductCardDifficulty extends StatelessWidget {
  const DashboardProductCardDifficulty({
    super.key,
    required this.product,
  });

  final RecipeResponse product;

  @override
  Widget build(BuildContext context) {
    return Text('Difficulty: ${product.difficulty!}', style: MyMealStyles().defaultProductDeifficulty);
  }
}
