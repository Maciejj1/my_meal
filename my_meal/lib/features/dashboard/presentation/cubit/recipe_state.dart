part of 'recipe_cubit.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.loading() = _Loading;
  const factory RecipeState.success(RecipeResponse data) = _Success;
  const factory RecipeState.failure(String message) = _Failure;
  const factory RecipeState.init() = _Init;
}
