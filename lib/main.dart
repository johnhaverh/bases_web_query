import 'package:bases_web_query/locator.dart';
import 'package:flutter/material.dart';
import 'package:bases_web_query/router/route_generator.dart';
import 'package:bases_web_query/ui/layout/main_layout_page.dart';
import 'package:bases_web_query/services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}  
  

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      //navigatorKey: navigationService.navigatorKey,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: ( _, child){
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}