// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/dashboard/data/datasources/dashboard_remote_datasource.dart'
    as _i3;
import 'features/dashboard/data/repositories/dashboard_repository.dart' as _i4;
import 'features/dashboard/presentation/cubit/recipe_cubit.dart' as _i5;
import 'features/dashboard/presentation/cubit/recipes_cubit.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DashboardRemoteDatasource>(
        () => _i3.DashboardRemoteDatasource());
    gh.lazySingleton<_i4.DashboardRepository>(
        () => _i4.DashboardRepository(gh<_i3.DashboardRemoteDatasource>()));
    gh.factory<_i5.RecipeCubit>(
        () => _i5.RecipeCubit(gh<_i4.DashboardRepository>()));
    gh.factory<_i6.RecipesCubit>(
        () => _i6.RecipesCubit(gh<_i4.DashboardRepository>()));
    return this;
  }
}
