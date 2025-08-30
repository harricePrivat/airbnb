import 'package:airbnb/provider/animation_recherche.dart';
import 'package:airbnb/screens/widgets/count_personne.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RechercheWho extends StatefulWidget {
  const RechercheWho({super.key});

  @override
  State<RechercheWho> createState() => _RechercheWhoState();
}

class _RechercheWhoState extends State<RechercheWho> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer<AnimationRecherche>(
      builder: (context, isFocus, child) {
        return AnimatedContainer(
          duration: Duration(seconds: 1),
          width: double.infinity,
          height: isFocus.focus[2] ? 400 : 65,

          child: isFocus.focus[2]
              ? Card(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(16),
                    child: Column(
                      spacing: 16,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Voyageurs ?",
                          style: isFocus.focus[2]
                              ? textTheme.titleLarge
                              : textTheme.titleMedium,
                        ),
                        CountPersonne(
                          personne: "Adultes",
                          description: "pour 18+ ans",
                          value: isFocus.reservation!.adultes,
                          onDiminuer: () {
                            isFocus.reservation!.adultes > 0
                                ? isFocus.diminueAdultes()
                                : ();
                          },
                          onAjoute: () {
                            isFocus.addAdultes();
                          },
                        ),
                        CountPersonne(
                          personne: "Enfants",
                          description: "Entre 5 ans et 17 ans",
                          value: isFocus.reservation!.enfants,

                          onDiminuer: () {
                            isFocus.reservation!.enfants > 0
                                ? isFocus.diminueEnfants()
                                : ();
                          },
                          onAjoute: () {
                            isFocus.addEnfants();
                          },
                        ),
                        CountPersonne(
                          personne: "Bébés",
                          description: "pour -5 ans",
                          value: isFocus.reservation!.bebes,

                          onDiminuer: () {
                            isFocus.reservation!.bebes > 0
                                ? isFocus.diminueBebes()
                                : ();
                          },
                          onAjoute: () {
                            isFocus.addBebes();
                          },
                        ),
                        CountPersonne(
                          personne: "Animaux",
                          description: "Animaux de compagnie",
                          value: isFocus.reservation!.animaux,

                          onDiminuer: () {
                            isFocus.reservation!.animaux > 0
                                ? isFocus.diminueAnimaux()
                                : ();
                          },
                          onAjoute: () {
                            isFocus.addAnimaux();
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      isFocus.activeThrid();
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsetsGeometry.all(16),
                        child: Row(
                          spacing: 16,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Voyageurs ?", style: textTheme.titleMedium),
                            Text(
                              isFocus.reservation!.sommePersonne() == 0
                                  ? "Ajouter des personnes"
                                  : "${isFocus.reservation!.sommePersonne()} personnes",
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
