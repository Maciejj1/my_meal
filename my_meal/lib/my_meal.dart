import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_meal/core/routes/app_routes.dart';
import 'package:my_meal/utils/helpers/constant.dart';

class MyMeal extends StatelessWidget {
  const MyMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        AppRoute.setStream(_);
        return MaterialApp.router(
          routeInformationProvider: AppRoute.router.routeInformationProvider,
          routeInformationParser: AppRoute.router.routeInformationParser,
          routerDelegate: AppRoute.router.routerDelegate,
          debugShowCheckedModeBanner: false,
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
                data: data.copyWith(alwaysUse24HourFormat: true, textScaler: const TextScaler.linear(1)),
                child: child!);
          },
          title: Constants.get.appName,
        );
      },
    );
  }
}
