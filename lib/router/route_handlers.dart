import 'package:fluro/fluro.dart';
import 'package:bases_web_query/ui/views/counter_provider_view.dart';
import 'package:bases_web_query/ui/views/counter_view.dart';
import 'package:bases_web_query/ui/views/view_404.dart';

 //Handlers

  final counterHandler = Handler(
    handlerFunc: (context, params) {
      return CounterView(base:params['base']?[0]??'5');
    } 
  );
  
  final counterProviderHandler = Handler(
    handlerFunc: (context, params) {
      
      return CounterProviderView(base:params['q']?[0]??'5');
    } 
  );

  final dashboardUserHandler = Handler(
    handlerFunc: (context, params) {
      
      return View404();
    } 
  );

  final pageNotFound = Handler(handlerFunc: (_, __) => View404());