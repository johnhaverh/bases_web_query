

import 'package:fluro/fluro.dart';
import 'package:bases_web_query/router/route_handlers.dart';
class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){
    router.define('/',handler: counterHandler,transitionType: TransitionType.fadeIn);

    //STATEFUL ROUTES
    router.define('/stateful',handler: counterHandler,transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',handler: counterHandler,transitionType: TransitionType.fadeIn);
    
    //PROVIDER ROUTES
    router.define('/provider',handler: counterProviderHandler,transitionType: TransitionType.fadeIn);
    router.define('/dashboard/users/:userid/:roleid',handler: dashboardUserHandler,transitionType: TransitionType.fadeIn);

    //404 ROUTES
    router.notFoundHandler = pageNotFound;
  }
}