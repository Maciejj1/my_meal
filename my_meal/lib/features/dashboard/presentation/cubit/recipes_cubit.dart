import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_meal/features/dashboard/data/models/recipes_response.dart';
import 'package:my_meal/features/dashboard/data/repositories/dashboard_repository.dart';

part 'recipes_state.dart';
part 'recipes_cubit.freezed.dart';

class RecipesCubit extends Cubit<RecipesState> {
  final DashboardRepository dashboardRepository;
  RecipesCubit(this.dashboardRepository) : super(const RecipesState.init());

  Future<void> getRecipes() async {
    try {
      emit(const RecipesState.loading());
      final response = await dashboardRepository.getAllRecipes();
      emit(RecipesState.success(response));
    } catch (e) {
      rethrow;
    }
  }
}
