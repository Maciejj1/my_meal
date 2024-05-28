import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meal/features/dashboard/presentation/cubit/recipes_cubit.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/dashboard_product_card.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';

class DashboardProductList extends StatelessWidget {
  const DashboardProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipesCubit, RecipesState>(
      bloc: context.read<RecipesCubit>()..getRecipes(),
      builder: (context, state) {
        return state.when(
          failure: (message) {
            return Container(
              width: Dimnesions.defaultHorizontalPadding,
              height: Dimnesions.defaultHorizontalPadding,
              color: Colors.redAccent,
              child: Text(message),
            );
          },
          init: () {
            return const Text('Initial');
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          success: (recipes) {
            final screenWidth = MediaQuery.of(context).size.width;
            final crossAxisCount = screenWidth ~/ Dimnesions.default300; // Adjust the c
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                ),
                scrollDirection: Axis.vertical,
                itemCount: recipes.recipes!.length,
                itemBuilder: (context, index) {
                  return DashboardProductCard(product: recipes.recipes![index]);
                },
              ),
            );
          },
        );
      },
    );
  }
}
