import 'package:flutter/material.dart';
import 'package:thuisgemaakt/pages/recipe_detail_page.dart';

class RecipeItem extends StatelessWidget {
  final String id;
  final String title;
  final String duration;
  final String difficulty;
  final String ingredients;
  final String preparation;
  final String image;

  const RecipeItem({
    super.key,
    required this.id,
    required this.title,
    required this.duration,
    required this.difficulty,
    required this.ingredients,
    required this.preparation,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: SizedBox.fromSize(
        size: const Size.fromRadius(15),
        child: GridTile(
          footer: GridTileBar(
            title: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(fontFamily: 'SerifPro', fontSize: 16),
            ),
            trailing: Text(
              duration,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            // ignore: prefer_const_constructors
            backgroundColor: Color.fromARGB(240, 96, 108, 56),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                RecipeDetailPage.routeName,
                arguments: id,
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(15),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
