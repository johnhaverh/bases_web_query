import 'package:flutter/material.dart';
import 'package:bases_web_query/services/navigation_service.dart';
import 'package:bases_web_query/ui/shared/Custom_flat_button.dart';
import 'package:bases_web_query/locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( _, BoxConstraints constraints) {
        return (constraints.maxWidth > 520 ? _TabletDesktopMenu() : _MobileMenu());
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        children:[
          CustomFlatButton(
            text: "Contador Sateful", 
            //onPressed: ()=> Navigator.pushNamed(context, '/stateful'),
            //onPressed: () => navigationService.navigateTo('/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: "Contador Provider", 
             //onPressed: ()=> Navigator.pushNamed(context, '/provider'),
             //onPressed: () => navigationService.navigateTo('/provider'),
             onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: "Otra pagina", 
            //onPressed: ()=> Navigator.pushNamed(context, '/404'),
            //onPressed: () => navigationService.navigateTo('/404'),
            onPressed: () => locator<NavigationService>().navigateTo('/404'),
            color: Colors.black)
          
        ]
      )
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CustomFlatButton(
            text: "Contador Sateful", 
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: "Contador Provider", 
             onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: "Otra pagina", 
            onPressed: () => locator<NavigationService>().navigateTo('/404'),
            color: Colors.black)
        ]
      )
    );
  }
}
