import 'package:airbnb/screens/theme.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Favoris extends StatefulWidget {
  const Favoris({super.key});

  @override
  State<Favoris> createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favoris")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text("Connectez-vous pour consulter vos Favoris"),
            Text(
              "Vous pouvez créer, consuler ou modifier les favoris en vous connectant à votre compte",
            ),
            ShadButton(
              backgroundColor: AirbnbTheme.airbnbRed,
              child: Text("Connexion"),
            ),
          ],
        ),
      ),
    );
  }
}
