import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thuisgemaakt/pages/recipe_overview_page.dart';
import 'package:thuisgemaakt/providers/recipes_provider.dart';
import 'package:thuisgemaakt/pages/recipe_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecipesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Thuisgemaakt',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(254, 250, 224, 1.0),
          fontFamily: 'SerifPro',
        ),
        home: const RecipeOverviewPage(),
        routes: {
          RecipeDetailPage.routeName: (context) => const RecipeDetailPage(),
        },
      ),
    );
  }
}
