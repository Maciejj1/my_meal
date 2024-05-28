import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meal/utils/helpers/my_meal_app_bar.dart';
import 'package:my_meal/utils/helpers/my_meal_footer.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/theme/bloc/theme_bloc.dart';

class PageScreenBuilder extends StatelessWidget {
  const PageScreenBuilder({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeBloc, DarkModeState>(
      bloc: context.read<DarkModeBloc>(),
      builder: (context, state) {
        return Scaffold(
            backgroundColor: ColorPalette.defaultBackgroundPage,
            bottomNavigationBar: const MyMealFooter(),
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: MyMealAppBar(),
            ),
            body: SingleChildScrollView(
              child: child,
            ));
      },
    );
  }
}
