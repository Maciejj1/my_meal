import 'package:my_meal/features/dashboard/data/datasources/dashboard_remote_datasource.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/features/dashboard/data/models/recipes_response.dart';

class DashboardRepository {
  final DashboardRemoteDatasource dashboardRemoteDatasource;
  DashboardRepository(this.dashboardRemoteDatasource);

  Future<RecipesResponse> getAllRecipes() async {
    try {
      return dashboardRemoteDatasource.getAllRecipes();
    } catch (e) {
      rethrow;
    }
  }

  Future<RecipeResponse> getRecipeById(int id) async {
    try {
      return dashboardRemoteDatasource.getRecipeById(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipesResponse>> getRecipeByMealType(String mealType) async {
    try {
      return dashboardRemoteDatasource.getRecipeByMealType(mealType);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipesResponse>> searchRecipes(String searchString) async {
    try {
      return dashboardRemoteDatasource.searchRecipes(searchString);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<String>> getTags() async {
    try {
      return dashboardRemoteDatasource.getTags();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<RecipesResponse>> getRecipeByTag(String tag) async {
    try {
      return dashboardRemoteDatasource.getRecipeByTag(tag);
    } catch (e) {
      rethrow;
    }
  }
}
