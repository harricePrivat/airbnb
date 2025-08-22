import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PropositionsDetails extends StatefulWidget {
  @override
  const PropositionsDetails({super.key});

  @override
  State<PropositionsDetails> createState() => _PropositionsDetails();
}

class _PropositionsDetails extends State<PropositionsDetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image avec overlay
          Stack(
            children: [
              // Image principale
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/paris.png',
                    ), // Image de la salle à manger
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Badge "Coup de coeur voyageurs"
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Coup de cœur voyageurs',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),

              // Bouton favoris
              Positioned(
                top: 12,
                right: 12,
                child: InkWell(
                  onTap: () {
                    isFavorite
                        ? Fluttertoast.showToast(msg: "Enlever du favoris")
                        : Fluttertoast.showToast(msg: "Ajouter du favoris");

                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      shape: BoxShape.circle,
                    ),
                    child: isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 18,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 18,
                          ),
                  ),
                ),
              ),

              // Avatar de l'hôte
              Positioned(
                bottom: 12,
                left: 12,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: const DecorationImage(
                      image: AssetImage('assets/paris.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Indicateurs de pagination
              Positioned(
                bottom: 12,
                right: 16,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Première image (active)
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    // Deuxième image
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    // Troisième image
                    Container(
                      width: 6,
                      height: 6,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    // Plus d'images
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Contenu textuel
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titre et rating
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Titre
                    const Expanded(
                      child: Text(
                        'Chambre · Villejuif',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    // Rating avec étoile
                    Row(
                      children: const [
                        Icon(Icons.star, size: 14, color: Colors.black87),
                        SizedBox(width: 4),
                        Text(
                          '4,9 (29)',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),

                // Sous-titre hôte
                const Text(
                  'Séjournez chez Dominique · Hôte depuis 9 ans',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),

                // Description
                const Text(
                  'Une suite confortable dans le Grand Paris K101',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),

                // Dates
                const Text(
                  '29–31 août',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12),

                // Prix
                Row(
                  children: [
                    // Prix barré
                    Text(
                      '\$135',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 6),

                    // Prix actuel
                    const Text(
                      '\$98',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 4),

                    // "pour 2 nuits"
                    Text(
                      'pour 2 nuits',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
