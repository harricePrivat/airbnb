import 'package:airbnb/screens/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.4,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 240, 239, 239),
          title: Text("Connexion ou inscription"),
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Text("Bienvenue sur Notre APp"),
              TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  label: Text("Numéro téléphone"),
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              Text(
                "Nous vous appellerons ou vous enverrons un SMS pour confirmer votre numéro. Les frais standards d'envoi de messages et d'échange de données s'appliquent. Politique de confidentialité",
              ),
              ShadButton(
                backgroundColor: AirbnbTheme.airbnbRed,
                pressedBackgroundColor: AirbnbTheme.airbnbRed.withValues(alpha: 0.9),
                width: MediaQuery.of(context).size.width - 32,
                child: Text("Continuer"),
              ),
              Row(
                spacing: 8,
                children: [
                  Expanded(child: Divider()),
                  Text("ou"),
                  Expanded(child: Divider()),
                ],
              ),
              ShadButton(
                decoration: ShadDecoration(
                  border: ShadBorder.all(color: Colors.black, width: 0.8),
                ),
                backgroundColor: Colors.white,
                hoverBackgroundColor: const Color.fromARGB(26, 211, 210, 210),
                width: MediaQuery.of(context).size.width - 32,
                child: Row(
                  spacing: 16,
                  children: [
                    Image.asset("assets/google.png", width: 20, height: 20),
                    Text(
                      "Se connecter avec Facebook",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),

              ShadButton(
                decoration: ShadDecoration(
                  border: ShadBorder.all(color: Colors.black, width: 0.8),
                ),
                backgroundColor: Colors.white,
                hoverBackgroundColor: const Color.fromARGB(26, 206, 205, 205),
                width: MediaQuery.of(context).size.width - 32,
                child: Row(
                  spacing: 16,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue),
                    Text(
                      "Se connecter avec Facebook",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
