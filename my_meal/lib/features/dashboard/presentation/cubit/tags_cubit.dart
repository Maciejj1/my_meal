import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_meal/features/dashboard/data/repositories/dashboard_repository.dart';

part 'tags_state.dart';
part 'tags_cubit.freezed.dart';

class TagsCubit extends Cubit<TagsState> {
  final DashboardRepository dashboardRepository;
  TagsCubit(this.dashboardRepository) : super(const TagsState.init());

  Future<void> getTags() async {
    try {
      emit(const TagsState.loading());
      final response = await dashboardRepository.getTags();
      emit(TagsState.success(response));
    } catch (e) {
      rethrow;
    }
  }
}
