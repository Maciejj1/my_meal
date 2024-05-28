import 'package:flutter/material.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/images.dart';

class DashboardProductCardImage extends StatelessWidget {
  const DashboardProductCardImage({
    super.key,
    required this.product,
  });

  final RecipeResponse product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimnesions.default0,
      left: Dimnesions.default0,
      right: Dimnesions.default0,
      height: Dimnesions.default150, // Half of the container height
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Dimnesions.radiusCircular),
              topRight: Radius.circular(Dimnesions.radiusCircular)),
          image: product.image == null
              ? const DecorationImage(image: AssetImage(Images.imageNotFound))
              : DecorationImage(
                  image: NetworkImage(product.image!), // Replace with URL to your image
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
