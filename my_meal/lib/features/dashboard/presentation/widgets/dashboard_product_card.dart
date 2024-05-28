import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/helpers/dashboard_product_card_button.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/helpers/dashboard_product_card_difficulty.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/helpers/dashboard_product_card_image.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/helpers/dashboard_product_card_title.dart';
import 'package:my_meal/my_meal.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/images.dart';
import 'package:my_meal/utils/resources/styles.dart';
import 'package:my_meal/utils/theme/bloc/theme_bloc.dart';

class DashboardProductCard extends StatelessWidget {
  const DashboardProductCard({
    super.key,
    required this.product,
  });

  final RecipeResponse product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeBloc, DarkModeState>(
      bloc: context.read<DarkModeBloc>(),
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                width: Dimnesions.default250,
                height: Dimnesions.default300,
                child: Stack(
                  children: [
                    DashboardProductCardImage(product: product),
                    Positioned(
                      top: Dimnesions.default150, // Start of the white part
                      left: Dimnesions.default0,
                      right: Dimnesions.default0,
                      height: Dimnesions.default150,
                      child: Container(
                        decoration: MyMealStyles().productCard,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Dimnesions.defaultHorizontalPadding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(Dimnesions.minimalPadding),
                              DashboardProductCardTitle(product: product),
                              const Gap(Dimnesions.minimalPadding),
                              DashboardProductCardDifficulty(product: product),
                              const Gap(Dimnesions.minimalPadding),
                              DashboardProductCardButton(product: product),
                              const Gap(Dimnesions.minimalPadding),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
