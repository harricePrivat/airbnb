import 'package:flutter/material.dart';

class AirbnbLikePage extends StatelessWidget {
  const AirbnbLikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// --- Image en haut
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(
              "https://picsum.photos/800/600", // mets ton image
              fit: BoxFit.cover,
            ),
          ),

          /// --- Contenu défilable
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.95,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Text(
                      "Chambre de taille moyenne, petit lit double,\nà 15 minutes du métro",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),

                    /// Localisation
                    Text(
                      "Chambre · Grand Londres, Royaume-Uni\n1 petit lit deux places · Salle de bain partagée",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(height: 16),

                    /// Note + Coup de coeur + Avis
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.black, size: 18),
                        const SizedBox(width: 4),
                        const Text("4,93"),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.favorite,
                          color: Colors.black,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        const Text("Coup de cœur voyageurs"),
                        const SizedBox(width: 16),
                        const Icon(
                          Icons.comment,
                          color: Colors.black,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        const Text("15 commentaires"),
                      ],
                    ),
                    const SizedBox(height: 20),

                    /// Profil hôte
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                            "https://i.pravatar.cc/150?img=5", // photo hôte
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Séjournez chez Maz",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "5 mois d’expérience en tant qu’hôte",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    /// Avertissement
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "Perle rare ! Les réservations pour ce logement sont fréquentes.",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              );
            },
          ),

          /// --- Bouton retour + actions (haut gauche et droite)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCircleIcon(Icons.arrow_back, context),
                  Row(
                    children: [
                      _buildCircleIcon(Icons.share, context),
                      const SizedBox(width: 8),
                      _buildCircleIcon(Icons.favorite_border, context),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// --- Barre du bas avec prix + bouton réserver
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Colors.black12)),
              ),
              child: Row(
                children: [
                  const Text(
                    "80 €",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Pour 2 nuits · 19–21 sept.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Réserver",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon, size: 20),
    );
  }
}
