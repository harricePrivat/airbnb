import 'package:airbnb/provider/animation_recherche.dart';
import 'package:airbnb/provider/tab_manager.dart';
import 'package:airbnb/screens/theme.dart';
import 'package:airbnb/services/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TabManager()),
        ChangeNotifierProvider(create: (context) => AnimationRecherche()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.appRouter;
    return ShadApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
        title: 'AirBnb Clone',
        debugShowCheckedModeBanner: false,
        theme: AirbnbTheme.theme,
      ),
    );
  }
}
