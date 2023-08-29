

import 'package:bases_web_query/ui/views/counter_provider_view.dart';
import 'package:fluro/fluro.dart';
import 'package:bases_web_query/ui/views/counter_view.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){
    router.define('/',handler: _counterHandler,transitionType: TransitionType.fadeIn);
    router.define('/stateful',handler: _counterHandler,transitionType: TransitionType.fadeIn);
    router.define('/provider',handler: _counterProviderHandler,transitionType: TransitionType.fadeIn);
  }

  //Handlers
  static Handler _counterHandler = Handler(handlerFunc: (context, params) => CounterView());
  static Handler _counterProviderHandler = Handler(handlerFunc: (context, params) => CounterProviderView());
}