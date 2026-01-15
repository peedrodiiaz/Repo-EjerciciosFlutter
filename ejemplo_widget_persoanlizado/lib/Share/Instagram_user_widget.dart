import 'package:flutter/material.dart';

class InstagramUserWidget extends StatelessWidget {
  const InstagramUserWidget({super.key, required String username});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LogoWithDetails extends StatelessWidget{
  final String logo;
  final String nombre;
  final int publicaciones;
  final int seguidores;
  final int seguidos;

  const LogoWithDetails({
    super.key,
    required this.logo,
    required this.nombre,
    required this.publicaciones,
    required this.seguidores,
    required this.seguidos,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(logo),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nombre,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '$publicaciones',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Publicaciones'),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        '$seguidores',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Seguidores'),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        '$seguidos',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Seguidos'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}