import 'package:flutter/material.dart';
import 'package:thuisgemaakt/components/recipe_item.dart';
import 'package:provider/provider.dart';
import 'package:thuisgemaakt/providers/recipes_provider.dart';

class RecipeGrid extends StatelessWidget {
  const RecipeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final recipesData = Provider.of<RecipesProvider>(context);
    final products = recipesData.getItems;
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3 / 1,
        crossAxisSpacing: 50,
        mainAxisSpacing: 60,
      ),
      itemBuilder: (context, i) => RecipeItem(
        id: products[i].id,
        title: products[i].title,
        duration: products[i].duration,
        difficulty: products[i].difficulty,
        ingredients: products[i].ingredients,
        preparation: products[i].preparation,
        image: products[i].image,
      ),
    );
  }
}
