import 'package:airbnb/provider/tab_manager.dart';
import 'package:airbnb/screens/pages/connexion.dart';
import 'package:airbnb/screens/pages/favoris.dart';
import 'package:airbnb/screens/pages/explore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  List<Widget> listPages = [Explore(), Favoris(), Connexion()];
  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          body: listPages[tabManager.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 4,
            currentIndex: tabManager.currentIndex,
            onTap: (index) {
              tabManager.changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                label: "Explorer",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: "Favoris",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: "Connexion",
              ),
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.add, color: Colors.black),
          // ),
        );
      },
    );
  }
}
