import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/actor.dart';

class ActorCard extends StatelessWidget {
  final Actor actor;

  const ActorCard({super.key, required this.actor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          // Imagen redondeada del actor
          Container(
            width: 120,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(26),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                actor.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.person, size: 60),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Nombre del actor
          SizedBox(
            width: 120,
            child: Text(
              actor.name,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 4),
          // Rol/Apellido
          SizedBox(
            width: 120,
            child: Text(
              actor.role,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
