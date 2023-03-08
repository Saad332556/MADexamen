import 'package:flutter/material.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abonnementen',
          style: TextStyle(fontFamily: 'SerifPro', fontWeight: FontWeight.bold),
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
                const SizedBox(height: 30),
                const SizedBox(
                  width: 600,
                  child: Text(
                    'Geen ads',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 600,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(15),
                      child: Image.asset(
                        'images/no-ads.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const SizedBox(
                  width: 600,
                  child: Text(
                    """Ben jij al de reclames zat en wil je graag gewoon de recepten kunnen zien en van de app genieten? Klik dan op de knop hieronder! 

Eenmalige betaling van €2,99""",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Geen ads',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                const SizedBox(
                  width: 600,
                  child: Text(
                    'Thuisgemaakt PRO',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 600,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(15),
                      child: Image.asset(
                        'images/subscribe.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const SizedBox(
                  width: 600,
                  child: Text(
                    """Wil jij iets meer dan de standaard features ÉN wil je geen ads meer zien? Ga dan nu voor Thuisgemaakt PRO!

Met PRO krijg je de volgende extraatjes:

» 2 recepten per dag

» Geen reclames

Prijs: €3,99 p/m""",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Thuisgemaakt PRO',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
