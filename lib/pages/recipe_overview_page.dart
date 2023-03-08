import 'package:flutter/material.dart';
import 'package:thuisgemaakt/components/recipe_grid.dart';
import 'package:thuisgemaakt/pages/subscriptions_page.dart';

class RecipeOverviewPage extends StatefulWidget {
  const RecipeOverviewPage({super.key});

  @override
  State<RecipeOverviewPage> createState() => _RecipeOverviewPageState();
}

class _RecipeOverviewPageState extends State<RecipeOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thuisgemaakt',
          style: TextStyle(fontFamily: 'SerifPro', fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 54, 24),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 40, 54, 24),
              ),
              child: Text(
                'Thuisgemaakt',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Abonnementen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SubscriptionsPage()),
                );
              },
            ),
            ListTile(
              title: const Text('"Dark mode"'),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: RecipeGrid(),
        ),
      ),
    );
  }
}
