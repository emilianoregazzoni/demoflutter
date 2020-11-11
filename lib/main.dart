import 'package:demoflutter/src/pages/alert_page.dart';
import 'package:demoflutter/src/pages/home_temp.dart';
import 'package:demoflutter/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
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