// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesResponseImpl _$$RecipesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipesResponseImpl(
      recipes: (json['recipes'] as List<dynamic>?)
          ?.map((e) => RecipeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      skip: (json['skip'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RecipesResponseImplToJson(
        _$RecipesResponseImpl instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
