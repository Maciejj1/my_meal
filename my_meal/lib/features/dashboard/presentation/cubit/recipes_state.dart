part of 'recipes_cubit.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.loading() = _Loading;
  const factory RecipesState.success(RecipesResponse data) = _Success;
  const factory RecipesState.failure(String message) = _Failure;
  const factory RecipesState.init() = _Init;
}
