import 'package:bases_web_query/locator.dart';
import 'package:bases_web_query/router/router.dart';
import 'package:flutter/material.dart';
//import 'package:bases_web_query/router/route_generator.dart';
import 'package:bases_web_query/ui/layout/main_layout_page.dart';
import 'package:bases_web_query/services/navigation_service.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(MyApp());
}  
  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: '/',
      //onGenerateRoute: RouteGenerator.generateRoute,
      //navigatorKey: navigationService.navigatorKey,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: ( _, child){
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}