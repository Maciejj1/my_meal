import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meal/features/product_details/presentation/product_details_screen_content.dart';
import 'package:my_meal/utils/helpers/page_screen_builder.dart';
import 'package:my_meal/utils/theme/bloc/theme_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeBloc, DarkModeState>(
      bloc: context.read<DarkModeBloc>(),
      builder: (context, state) {
        return PageScreenBuilder(
          child: ProductDetailsScreenContent(
            id: id,
          ),
        );
      },
    );
  }
}
