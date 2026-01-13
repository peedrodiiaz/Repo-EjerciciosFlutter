import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/actor.dart';
import '../widgets/actor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            'Best Iranian Actors\nand Actresses',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
              height: 1.2,
            ),
          ),
        ),
      ),
      body: const ActorsListView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Widget para mostrar la lista horizontal de actores
class ActorsListView extends StatelessWidget {
  const ActorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final actors = [
      Actor(
        name: 'Golshifteh',
        role: 'Farahani',
        imageUrl:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=300&h=400&fit=crop',
      ),
      Actor(
        name: 'Navid',
        role: 'Mohammadzadeh',
        imageUrl:
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=400&fit=crop',
      ),
      Actor(
        name: 'Taraneh',
        role: 'Alidoosti',
        imageUrl:
            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=300&h=400&fit=crop',
      ),
      Actor(
        name: 'Shahab',
        role: 'Hosseini',
        imageUrl:
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=400&fit=crop',
      ),
      Actor(
        name: 'Soraya',
        role: 'Farhadi',
        imageUrl:
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=300&h=400&fit=crop',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'March 2020',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          // ListView horizontal
          SizedBox(
            height: 380,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: actors.length,
              itemBuilder: (context, index) {
                return ActorCard(actor: actors[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
