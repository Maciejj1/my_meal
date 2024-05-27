import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_meal/core/api/api_list.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/features/dashboard/data/models/recipes_response.dart';

@lazySingleton
class DashboardRemoteDatasource {
  Future<List<RecipesResponse>> getAllRecipes() async {
    try {
      final response = await Dio().get(ListAPI.baseUrl + ListAPI.getAllRecipes,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List).map((e) => RecipesResponse.fromJson(e)).toList();
        } else {
          return [RecipesResponse.fromJson(response.data)];
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipeResponse>> getRecipeById(int id) async {
    try {
      final response = await Dio().get(ListAPI.baseUrl + ListAPI.getSingleRecipe + id.toString(),
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List).map((e) => RecipeResponse.fromJson(e)).toList();
        } else {
          return [RecipeResponse.fromJson(response.data)];
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipesResponse>> getRecipeByMealType(String mealType) async {
    try {
      final response = await Dio().get(ListAPI.baseUrl + ListAPI.getRecipesByMealType + mealType,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List).map((e) => RecipesResponse.fromJson(e)).toList();
        } else {
          return [RecipesResponse.fromJson(response.data)];
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipesResponse>> searchRecipes(String searchString) async {
    try {
      final response = await Dio().get(ListAPI.baseUrl + ListAPI.searchRecipes + searchString,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List).map((e) => RecipesResponse.fromJson(e)).toList();
        } else {
          return [RecipesResponse.fromJson(response.data)];
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<String>> getTags() async {
    try {
      final response = await Dio().get(ListAPI.baseUrl + ListAPI.getRecipesTags,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List).map((e) => e.toString()).toList();
        } else {
          throw Exception('Expected a list of tags');
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipesResponse>> getRecipeByTag(String tag) async {
    try {
      final response = await Dio().get(ListAPI.baseUrl + ListAPI.getRecipesByTag + tag,
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }));

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List).map((e) => RecipesResponse.fromJson(e)).toList();
        } else {
          return [RecipesResponse.fromJson(response.data)];
        }
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }
}
