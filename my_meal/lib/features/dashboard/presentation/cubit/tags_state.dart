part of 'tags_cubit.dart';

@freezed
class TagsState with _$TagsState {
  const factory TagsState.loading() = _Loading;
  const factory TagsState.success(List<String> data) = _Success;
  const factory TagsState.failure(String message) = _Failure;
  const factory TagsState.init() = _Init;
}
