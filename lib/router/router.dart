

import 'package:fluro/fluro.dart';
import 'package:bases_web_query/ui/views/counter_view.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){
    router.define(
      '/',
      handler: _counterHandler
    );
  }

  //Handlers
  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterView()
  );

}