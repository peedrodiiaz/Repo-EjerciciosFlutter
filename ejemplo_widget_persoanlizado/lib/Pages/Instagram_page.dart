// ignore_for_file: file_names

import 'package:ejemplo_widget_persoanlizado/Share/Instagram_user_widget.dart';
import 'package:flutter/material.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LogoWithDetails(logo: "" 
          , nombre: "pedrodiiaz._"
          , publicaciones: 7
          , seguidores: 1326
          , seguidos: 1217
          )
        ],
      ),
    );
  }
}