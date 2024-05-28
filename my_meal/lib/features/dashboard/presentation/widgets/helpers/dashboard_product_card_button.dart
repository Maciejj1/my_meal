import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/styles.dart';

class DashboardProductCardButton extends StatelessWidget {
  const DashboardProductCardButton({
    super.key,
    required this.product,
  });

  final RecipeResponse product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ElevatedButton(
          onPressed: () {
            context.go('/dashboard/dashboard/${product.id}');
          },
          style: MyMealStyles().productButton,
          child: const Text('View recipe'),
        ),
      ),
    );
  }
}
