import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/dashboard_banner.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/dashboard_product_list.dart';
import 'package:my_meal/utils/helpers/my_meal_app_bar.dart';
import 'package:my_meal/utils/helpers/page_screen_builder.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/images.dart';
import 'package:my_meal/utils/theme/bloc/theme_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageScreenBuilder(
      child: Column(
        children: [
          DashboardBanner(
            isProductPage: false,
            bannerImage: Images.dashboardBanner,
            bannerText: 'Get inspired, cook with passion and enjoy unforgettable moments at the table.',
          ),
          Gap(Dimnesions.defaultHorizontalPadding),
          DashboardProductList()
        ],
      ),
    );
  }
}
