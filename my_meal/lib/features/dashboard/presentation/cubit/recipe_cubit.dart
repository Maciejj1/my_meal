import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_meal/features/dashboard/data/models/recipe_response.dart';
import 'package:my_meal/features/dashboard/data/repositories/dashboard_repository.dart';

part 'recipe_state.dart';
part 'recipe_cubit.freezed.dart';

@injectable
class RecipeCubit extends Cubit<RecipeState> {
  final DashboardRepository dashboardRepository;
  RecipeCubit(this.dashboardRepository) : super(const RecipeState.init());

  Future<void> getRecipeById(int id) async {
    try {
      emit(const RecipeState.loading());
      final response = await dashboardRepository.getRecipeById(id);
      emit(RecipeState.success(response));
    } catch (e) {
      rethrow;
    }
  }
}
