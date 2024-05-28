import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/presentation/cubit/recipe_cubit.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/dashboard_banner.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_details_times_row.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_detials_diff_row.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_ingredients.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_instructions.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_meal_type.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_rating_row.dart';
import 'package:my_meal/features/product_details/presentation/widgets/product_tags.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';

class ProductDetailsScreenContent extends StatelessWidget {
  const ProductDetailsScreenContent({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeCubit, RecipeState>(
        bloc: context.read<RecipeCubit>()..getRecipeById(int.parse(id)),
        builder: (context, state) {
          return state.when(failure: (recipeError) {
            return Container(
                width: Dimnesions.default200,
                height: Dimnesions.default200,
                color: Colors.redAccent,
                child: Text(recipeError));
          }, init: () {
            return const Text('Initial');
          }, loading: () {
            return const CircularProgressIndicator();
          }, success: (recipe) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  DashboardBanner(
                    isProductPage: true,
                    bannerImage: recipe.image!,
                    bannerText: recipe.name!,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductDetailsTimesRow(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductDetialsDiffRow(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductRatingRow(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductMealType(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductTags(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductIngredients(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                  ProductInstructions(
                    recipe: recipe,
                  ),
                  const Gap(Dimnesions.defaultHorizontalPadding),
                ],
              ),
            );
          });
        });
  }
}
