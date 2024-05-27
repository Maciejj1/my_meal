// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
part 'recipes_response.freezed.dart';
part 'recipes_response.g.dart';

@freezed
class RecipesResponse with _$RecipesResponse {
  const factory RecipesResponse({List<RecipeResponse>? recipes, int? total, int? skip, int? limit}) = _RecipesResponse;

  const RecipesResponse._();

  factory RecipesResponse.fromJson(Map<String, dynamic> json) => _$RecipesResponseFromJson(json);
}
