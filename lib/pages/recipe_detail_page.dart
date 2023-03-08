import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thuisgemaakt/providers/recipes_provider.dart';

class RecipeDetailPage extends StatelessWidget {
  static const routeName = '/recipe-detail';

  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<RecipesProvider>(context, listen: false)
        .findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedProduct.title,
          style: const TextStyle(
              fontFamily: 'SerifPro', fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 54, 24),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  width: 600,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(15),
                      child: Image.asset(
                        loadedProduct.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 600,
                  child: Text(
                    '🕛 ${loadedProduct.duration} | ${loadedProduct.difficulty}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 600,
                  child: Text(
                    loadedProduct.description,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const SizedBox(
                  width: 600,
                  child: Text(
                    'INGREDIËNTEN',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromARGB(255, 188, 108, 37),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 600,
                  child: Text(
                    loadedProduct.ingredients,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const SizedBox(
                  width: 600,
                  child: Text(
                    'BEREIDING',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color.fromARGB(255, 188, 108, 37),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 600,
                  child: Text(
                    loadedProduct.preparation,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  child: Image.asset(
                    'images/ad2.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
