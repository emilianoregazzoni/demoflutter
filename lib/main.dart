import 'package:demoflutter/src/pages/alert_page.dart';
import 'package:demoflutter/src/pages/home_temp.dart';
import 'package:demoflutter/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate, // idioma esp
    ],
      supportedLocales: [
      const Locale('en', 'US'), // English, no country code
      const Locale('es', 'ES'), // Spanish, no country code
    ],


      //home: HomePage(),
      
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      onGenerateRoute: (RouteSettings settings){
        print('ruta llamada : ${settings.name}');

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
          );
      },
    );
  }
} 