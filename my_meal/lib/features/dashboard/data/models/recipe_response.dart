// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe_response.freezed.dart';
part 'recipe_response.g.dart';

@freezed
class RecipeResponse with _$RecipeResponse {
  const factory RecipeResponse({
    int? id,
    String? name,
    List<String>? ingredients,
    List<String>? instructions,
    int? prepTimeMinutes,
    int? cookTimeMinutes,
    int? servings,
    String? difficulty,
    String? cuisine,
    int? caloriesPerServing,
    List<String>? tags,
    int? userId,
    String? image,
    double? rating,
    int? reviewCount,
    List<String>? mealType,
  }) = _RecipeResponse;

  const RecipeResponse._();

  factory RecipeResponse.fromJson(Map<String, dynamic> json) => _$RecipeResponseFromJson(json);
}
