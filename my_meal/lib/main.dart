import 'package:flutter/material.dart';
import 'package:my_meal/di.dart';
import 'package:my_meal/my_meal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyMeal());
}
