// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipesResponse _$RecipesResponseFromJson(Map<String, dynamic> json) {
  return _RecipesResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipesResponse {
  List<RecipeResponse>? get recipes => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesResponseCopyWith<RecipesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesResponseCopyWith<$Res> {
  factory $RecipesResponseCopyWith(
          RecipesResponse value, $Res Function(RecipesResponse) then) =
      _$RecipesResponseCopyWithImpl<$Res, RecipesResponse>;
  @useResult
  $Res call({List<RecipeResponse>? recipes, int? total, int? skip, int? limit});
}

/// @nodoc
class _$RecipesResponseCopyWithImpl<$Res, $Val extends RecipesResponse>
    implements $RecipesResponseCopyWith<$Res> {
  _$RecipesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: freezed == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeResponse>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipesResponseImplCopyWith<$Res>
    implements $RecipesResponseCopyWith<$Res> {
  factory _$$RecipesResponseImplCopyWith(_$RecipesResponseImpl value,
          $Res Function(_$RecipesResponseImpl) then) =
      __$$RecipesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeResponse>? recipes, int? total, int? skip, int? limit});
}

/// @nodoc
class __$$RecipesResponseImplCopyWithImpl<$Res>
    extends _$RecipesResponseCopyWithImpl<$Res, _$RecipesResponseImpl>
    implements _$$RecipesResponseImplCopyWith<$Res> {
  __$$RecipesResponseImplCopyWithImpl(
      _$RecipesResponseImpl _value, $Res Function(_$RecipesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = freezed,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$RecipesResponseImpl(
      recipes: freezed == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeResponse>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipesResponseImpl extends _RecipesResponse {
  const _$RecipesResponseImpl(
      {final List<RecipeResponse>? recipes, this.total, this.skip, this.limit})
      : _recipes = recipes,
        super._();

  factory _$RecipesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipesResponseImplFromJson(json);

  final List<RecipeResponse>? _recipes;
  @override
  List<RecipeResponse>? get recipes {
    final value = _recipes;
    if (value == null) return null;
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'RecipesResponse(recipes: $recipes, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesResponseImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recipes), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesResponseImplCopyWith<_$RecipesResponseImpl> get copyWith =>
      __$$RecipesResponseImplCopyWithImpl<_$RecipesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipesResponseImplToJson(
      this,
    );
  }
}

abstract class _RecipesResponse extends RecipesResponse {
  const factory _RecipesResponse(
      {final List<RecipeResponse>? recipes,
      final int? total,
      final int? skip,
      final int? limit}) = _$RecipesResponseImpl;
  const _RecipesResponse._() : super._();

  factory _RecipesResponse.fromJson(Map<String, dynamic> json) =
      _$RecipesResponseImpl.fromJson;

  @override
  List<RecipeResponse>? get recipes;
  @override
  int? get total;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$RecipesResponseImplCopyWith<_$RecipesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
