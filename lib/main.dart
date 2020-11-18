import 'package:flutter/material.dart';
import 'home_page.dart';
import 'splash_screen.dart';
import 'translator_Page_1.dart';
import 'facts_page.dart';
import 'history_page.dart';
import 'translator_Page_2.dart';
import 'Translations.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/homePage': (context) => HomePage(),
        '/TranslateMorsetoEnglish': (context) => TranslatorPage1(),
        '/historyPage': (context) => HistoryPage(),
        '/factsPage': (context) => FactsPage(),
        '/TranslateEnglishtoMorse': (context) => TranslatorPage2(),
        'Translations': (context) => TranslationInfo(),
      },
    );
  }
}
