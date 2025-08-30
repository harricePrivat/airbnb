import 'package:airbnb/models/reservation.dart';
import 'package:airbnb/provider/animation_recherche.dart';
import 'package:airbnb/screens/theme.dart';
import 'package:airbnb/screens/widgets/recherche_when.dart';
import 'package:airbnb/screens/widgets/recherche_where.dart';
import 'package:airbnb/screens/widgets/recherche_who.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class RecherchePage extends StatefulWidget {
  const RecherchePage({super.key});

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  @override
  Widget build(BuildContext context) {
    final reservation = Provider.of<AnimationRecherche>(
      context,
      listen: true,
    ).reservation;
    // final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Réservation "),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: Colors.white,
            elevation: 6,
            shape: CircleBorder(),
            child: InkWell(
              customBorder: CircleBorder(),
              onTap: () => context.pop(),
              child: Center(child: Icon(LucideIcons.x, color: Colors.black)),
            ),
          ),
        ),
      ),
      body: Hero(
        tag: "container",
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RechercheWhere(),
                  RechercheWhen(),
                  RechercheWho(),

                  // Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child:
            (reservation!.destination.isNotEmpty &&
                !reservation.date!.isSameDay(DateTime.now()) &&
                reservation.sommePersonne() != 0)
            ? SizedBox(
                key: const ValueKey("withData"), // 🔑
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Provider.of<AnimationRecherche>(
                            context,
                            listen: false,
                          ).setReservation(
                            Reservation(
                              animaux: 0,
                              destination: "",
                              date: DateTime.now(),
                              adultes: 0,
                              enfants: 0,
                              bebes: 0,
                            ),
                          );
                        },
                        child: Text(
                          "Tout effacer",
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF222222),
                          ),
                        ),
                      ),

                      ShadButton(
                        backgroundColor: AirbnbTheme.airbnbRed,
                        pressedBackgroundColor: AirbnbTheme.airbnbRed
                            .withValues(alpha: 0.9),
                        child: Text("Continuer"),
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(
                key: const ValueKey("empty"), // 🔑
              ),
      ),
    );
  }
}
