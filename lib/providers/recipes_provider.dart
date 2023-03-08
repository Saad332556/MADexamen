import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:thuisgemaakt/models/recipe.dart';

class RecipesProvider with ChangeNotifier {
  final List<Recipe> _items = [
    Recipe(
      id: 'p1',
      title: 'Pasta met zalm en spinazie',
      duration: '30 min',
      difficulty: 'Moeilijkheid: 2/3',
      description:
          'Snel en makkelijk een heerlijk pastagerecht op tafel met zalm en spinazie in een romige saus, echt een perfecte combinatie!',
      ingredients:
          'Voor 4 personen: \n \n☑️ 350 gr tagliatelle,\n☑️ 350 ml kookroom (light),\n☑️ 400 gr verse spinazie,\n☑️ 400 gr zalmfilet,\n☑️ 1 ui,\n☑️ Peper en zout,\n☑️ 250 gr cherrytomaatjes,\n☑️ 50 gr pijnboompitten (geroosterd),\n☑️ 2 teentjes knoflook,\n☑️ 1 eetlepel olijfolie',
      preparation:
          """1) Kook de pasta volgens verpakking beetgaar. Snipper ondertussen de ui en de teentjes knoflook fijn. Bak deze glazig in een grote hapjes of wokpan in een eetlepel olie.
          
2) Voeg de zalm toe en bak rondom aan, steek met een spatel in stukken. Voeg dan in etappes de spinazie toe totdat deze wat geslonken is. Schenk de kookroom erbij en breng op maak met flink wat peper en zout.
          
3) Halveer de tomaatjes en meng deze met de zalm en spinazie. Verwarm een paar minuten door en voeg dan de tagliatelle toe. Mix alles door elkaar en schep op borden. Bestrooi met geroosterde pijnboompitten.""",
      image: "images/gerecht1.jpg",
    ),
    Recipe(
      id: 'p2',
      title: 'Romige tagliatelle met kruidige kip',
      duration: '20 min',
      difficulty: 'Moeilijkheid: 1/3',
      description:
          'Snelle tagliatelle met maar 5 ingrediënten. Romig, heerlijk gekruid en met kip en roerbakgroenten. Gemakkelijk een lekker gerecht op tafel.',
      ingredients:
          'Voor 4 personen: \n \n☑️ 300 gr tagliatelle,\n☑️ 400 gr (vega)kipstukjes,\n☑️ 500 gr Thaise groentemix,\n☑️ 40 gr nasikruiden,\n☑️ 250 ml ongeklopte slagroom (plantaardig),\n☑️ 100 ml heet water,\n☑️ Olie om in te bakken,\n☑️ Peper en zout',
      preparation:
          '1) Doe de nasikruiden in een kommetje met het hete water en roer het door. Laat het even wellen.\n \n2) Bak de (vega) kipstukjes in de pan goudbruin. Voeg zodra de kip gebakken is de Thaise groentemix toe en roerbak dit een paar minuutjes mee.\n \n3) Kook ondertussen de tagliatelle gaar.\n \n4) Voeg daarna de nasikruiden en de slagroom toe en roer goed door. Mocht je het te waterig vinden, zet het vuur dan hoger zodat het wat kan inkoken.\n \n5) Voeg als laatste de gekookte pasta toe en schep erdoorheen.\n \n6) Tip: kies voor vegan kipstukjes en plantaardige room zoals haverroom/haver cuisine of sojaroom om dit recept plantaardig te maken.',
      image: 'images/gerecht2.jpg',
    ),
    Recipe(
      id: 'p3',
      title: 'Pasta pesto met kip',
      duration: '25 min',
      difficulty: 'Moeilijkheid: 2/3',
      description:
          'Dit lekkere en makkelijke recept met pasta en kip in een lekkere romige pestosaus moet je een keer geprobeerd hebben!',
      ingredients:
          'Voor 4 personen: \n \n☑️ 300 gr pasta,\n☑️ 400 gr kipfilet (in stukjes),\n☑️ 1 ui,\n☑️ 250 ml room,\n☑️ 250 gr cherry tomaatjes,\n☑️ Peper en zout,\n☑️ Scheutje olijfolie,\n☑️ 60 gr pijnboompitten (geroosterd),\n☑️ Handje rucola,\n☑️ 4 eetlepels pesto (zelfgemaakte pesto of kant en klaar)',
      preparation:
          '1) Snipper het uitje en fruit even aan in een scheutje olijfolie. Voeg de blokjes kip toe en bak ongeveer 5 minuten. Kook ondertussen de pasta gaar. Voeg de (zelfgemaakte) pesto en room toe aan de kip en roer goed door. Proef nog even of er nog peper of zout bij moet.\n \n2) Laat de pestosaus een paar minuutjes zachtjes pruttelen. Voeg dan de gekookte pasta toe en schep er doorheen. Halveer de tomaatjes en roer ook door de pasta pesto en verwarm nog een minuutje mee. Serveer de pasta pesto in de pan of op een bord met een handje rucola en de geroosterde pijnboompitten.\n \n3) Tip: deze pasta pesto is ook lekker met geraspte kaas. Gebruik ook eens stukjes vegetarische kip voor een vegetarische variant op de kip pesto.',
      image: 'images/gerecht3.jpg',
    ),
    Recipe(
      id: 'p4',
      title: 'Mac and cheese',
      duration: '25 min + 40 min oventijd',
      difficulty: 'Moeilijkheid: 1/3',
      description:
          'Klassieke recept met macaroni en kaas uit de oven, aangevuld met broccoli voor een lekkere en complete maaltijd.',
      ingredients:
          'Voor 4 personen: \n \n☑️ 300 gr grote macaroni,\n☑️ 400 gr broccoli,\n☑️ 500 ml melk,\n☑️ 50 gr bloem,\n☑️ 50 gr boter,\n☑️ 1 snuf chili naar smaak,\n☑️ 150 gr geraspte kaas,\n☑️ 1 snuf nootmuskaat,\n☑️ 2 eetlepels paneermeel',
      preparation:
          '1) Verwarm de oven voor op 200° graden.\n \n2) Kook ook de broccoli roosjes (eventueel samen met de macaroni in de pan) ca. 5 minuten. En giet beide daarna af.\n \n3) Smelt de boter in een (saus)pannetje. Roer de bloem erdoor en bak dit mengsel (roux) een paar minuutjes.\n \n4) Giet dan beetje bij beetje de melk erbij en roer door met een garde tot een gladde saus.\n \n5) Roer ongeveer ⅔ van de kaas door de saus en breng deze verder op smaak met peper, zout, nootmuskaat en chili.\n \n6) Meng de macaroni, broccoli en kaassaus door elkaar en doe daarna in een ingevette ovenschaal.\n \n7) Bestrooi de bovenzijde met het paneermeel en de rest van de geraspte kaas.\n \n8) Zet de mac and cheese ovenschotel ca. 40 minuten in de oven.\n \n9) Serveer eventueel met een salade ernaast.\n \n10) Tips: vervang de helft van de geraspte kaas ook eens door gruyèrekaas, cheddar of blauwe kaas of een andere soort kaas.',
      image: 'images/gerecht4.jpg',
    ),
    Recipe(
      id: 'p5',
      title: 'Butter paneer curry',
      duration: '40 min',
      difficulty: 'Moeilijkheid: 2/3',
      description:
          'Een eiwitrijke, vegetarische curry vol met groenten zoals broccoli, doperwten en paprika en krokante blokjes gebakken paneer',
      ingredients:
          'Voor 3 personen: \n \n☑️ 225 gr paneer,\n☑️ 70 gr rode curry pasta (Fraitrade),\n☑️ 200 ml kokosmelk,\n☑️ 400 gr tomatenblokjes,\n☑️ 500 gr broccoli,\n☑️ 200 gr doperwten,\n☑️ 1 rode paprika,\n☑️ 1 ui,\n☑️ 2 teentjes knoflook,\n☑️ 1 rode peper,\n☑️ Koriander om te garneren,\n☑️ Zilvervliesrijst om erbij te serveren',
      preparation:
          '1) Snipper de ui, snijd de knoflook en rode peper fijn en de paprika in blokjes. Snijd de paneer ook in blokjes en de broccoli in roosjes.\n \n2) Verhit een grote wok pan met wat olie/boter. Fruit de knoflook en ui eerst aan en voeg daarna de peper en paprika toe. Bak dit even mee.\n \n3) Voeg daarna de currypasta toe, laat dit ongeveer 2 minuten bakken en voeg daarna de kokosmelk en tomatenblokjes toe.\n \n4) Voeg ook de broccoli toe en laat dit ongeveer 10 minuten zachtjes pruttelen.\n \n5) Verhit in een andere pan wat olie/boter en bak hierin de paneer rondom bruin.\n \n6) Voeg op het laatste de doperwten en de paneer toe aan de curry.\n \n7) Serveer met zilvervliesrijst en garneer met wat koriander.',
      image: 'images/gerecht5.jpg',
    ),
    Recipe(
      id: 'p6',
      title: 'Gezonde pastasalade',
      duration: '30 min',
      difficulty: 'Moeilijkheid: 2/3',
      description:
          'Een lekkere en gezonde pastasalade gemaakt met o.a. volkoren pasta en groenten zoals tomaatjes, courgette en avocado. Simpel en verantwoord!',
      ingredients:
          'Voor 4 personen:\n \n☑️ 240 gr volkoren pasta,\n☑️ 2 avocados,\n☑️ Handje rucola,\n☑️ 2 courgettes (of gegrilde paprika),\n☑️ 2 bollen mozzarella,\n☑️ Verse basilicum,\n☑️ Handje pistache (ongezouten),\n☑️ 24 cherrytomaatjes\n \n \nDressing:\n \n☑️ 1 eetlepel balsamico azijn,\n☑️ 2 eetlepels citroensap,\n☑️ 2 eetlepels olijfolie,\n☑️ Peper en zout\n \n \nMaterialen:\n \n☑️ Kaasschaaf of mandoline',
      preparation:
          '1) Kook de pasta gaar. Snijd de courgette in plakken met bijvoorbeeld kaasschaaf of mandoline en grill deze in een (grill) pan met een snufje peper en zout. Meng de ingrediënten voor de dressing door elkaar. Snijd de tomaatjes doormidden. Halveer de avocado, verwijder de schil en pit en snijd het vruchtvlees in plakjes. Spoel de pasta af met koud water.\n \n2) Meng de pasta met de dressing, tomaatjes, gegrilde courgette en rucola. Scheur de mozzarella in stukjes en voeg toe aan de pastasalade. Voeg als laatste de plakjes avocado toe. Garneer de gezonde pastasalade met verse basilicum en pistachenootjes.\n \n3) Dit is een vegetarische pastasalade, wil je toch wat vlees toevoegen dan kun je bijvoorbeeld gerookte kip gebruiken.',
      image: 'images/gerecht6.jpg',
    ),
    Recipe(
      id: 'p7',
      title: 'Pastasalade met tonijn',
      duration: '25 min',
      difficulty: 'Moeilijkheid: 2/3',
      description:
          'Makkelijke salade met pasta en tonijn uit blik met een Italiaanse twist van pesto en basilicum',
      ingredients:
          'Voor 4 personen:\n \n☑️ 250 gr pasta (bijv. fusili of penne),\n☑️ 2 blikje tonijn (160 gr),\n☑️ 500 gr tomaatjes,\n☑️ 4 eieren,\n☑️ 2 kleine rode ui,\n☑️ Handje rucola,\n☑️ 6 eetlepels pesto,\n☑️ Blaadjes verse basilicum',
      preparation:
          '1) Kook de pasta gaar, giet af en spoel af onder de koude kraan.\n \n2) Kook ook de eieren gaar in ca. 8 minuten.\n \n3) Snijd de ui in dunne ringetjes en snijd de cherrytomaatjes doormidden.\n \n4) Doe de pasta in een kom en schep de pesto erdoor en de tonijn.\n \n5) Voeg de tomaatjes, rucola, ui en wat gescheurde blaadjes basilicum toe en meng er ook doorheen.\n \n6) Serveer de pasta met partjes ei.\n \n7) Deze pastasalade met tonijn is zowel lauwwarm als koud lekker.\n \n8) Tip: dit gerecht is een hoofdgerecht maar ook lekker als lunch. Houd dan dit recept aan voor 3 personen.',
      image: 'images/gerecht7.jpg',
    ),
  ];

  List<Recipe> get getItems {
    return _items;
  }

  void addProduct(value) {
    _items.add(value);
    notifyListeners();
  }

  Recipe findById(String id) {
    return getItems.firstWhere((product) => product.id == id);
  }
}
