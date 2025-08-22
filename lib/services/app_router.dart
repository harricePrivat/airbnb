import 'package:airbnb/screens/pages/accueil.dart';
import 'package:airbnb/screens/pages/details.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final appRouter = GoRouter(
    initialLocation: "/accueil",
    routes: [
      GoRoute(path: "/accueil", builder: (context, state) => Accueil()),
      GoRoute(path: "/details", builder: (context, state) => Details()),
    ],
    //redirect: (context, state) {}
  );
}
