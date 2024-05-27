class ListAPI {
  ListAPI._();
  static const String baseUrl = String.fromEnvironment("BASE_URL", defaultValue: "https://dummyjson.com");
  static const String getAllRecipes = "/recipes";
  static const String getSingleRecipe = "/recipes/";
  static const String searchRecipes = "/recipes/search?q=";
  static const String getRecipesTags = "/recipes/tags";
  static const String getRecipesByTag = "/recipes/tag/";
  static const String getRecipesByMealType = "/recipes/meal-type/";
}
