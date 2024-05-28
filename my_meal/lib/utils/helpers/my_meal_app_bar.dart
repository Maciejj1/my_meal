import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_meal/utils/helpers/constant.dart';
import 'package:my_meal/utils/resources/color_palette.dart';
import 'package:my_meal/utils/resources/dimnesions.dart';
import 'package:my_meal/utils/resources/images.dart';
import 'package:my_meal/utils/resources/styles.dart';
import 'package:my_meal/utils/theme/bloc/theme_bloc.dart';
import 'package:my_meal/utils/theme/theme_constants.dart';

class MyMealAppBar extends StatelessWidget {
  const MyMealAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeBloc, DarkModeState>(
      bloc: context.read<DarkModeBloc>(),
      builder: (context, state) {
        return AppBar(
          backgroundColor: ColorPalette.defaultAppBarBackground,
          title: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      Images.logo,
                      height: Dimnesions.logoHeight,
                    ),
                    const SizedBox(width: Dimnesions.smallPadding),
                    Text(Constants.get.appName, style: MyMealStyles().appBarTextStyle),
                  ],
                ),
              ),
              Row(
                children: [
                  const Gap(20),
                  Padding(
                      padding: const EdgeInsets.only(right: Dimnesions.minimalPadding),
                      child: Switch.adaptive(
                        value: DarkModeSwitch.isDarkMode,
                        onChanged: (value) {
                          BlocProvider.of<DarkModeBloc>(context).add(ToggleDarkModeEvent());
                        },
                      ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
