import 'package:flutter/material.dart';
import 'package:proyectodesing/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:proyectodesing/pages/recipe_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes en Flutter',
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],

      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
      //home: HomePages(),
      initialRoute: 'recipe',
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => HomePage(),
        'recipe': (BuildContext context) => RecipePage()
      },
    );
  }
}
