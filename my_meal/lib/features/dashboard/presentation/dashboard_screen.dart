import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/dashboard_banner.dart';
import 'package:my_meal/features/dashboard/presentation/widgets/dashboard_product_list.dart';
import 'package:my_meal/utils/helpers/page_screen_builder.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/images.dart';

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
