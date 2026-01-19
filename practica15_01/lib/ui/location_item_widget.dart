import 'package:flutter/material.dart';
import 'package:practica15_01/shared/badge_widget.dart';

class LocationItemWidget extends StatelessWidget {
  const LocationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 300,
      width: 200,
      child: Stack(
        children: [
          Image.network(
            'https://media.istockphoto.com/id/576913134/es/foto/plaza-de-espa%C3%B1a-sevilla-espa%C3%B1a.jpg?s=612x612&w=is&k=20&c=zuou0tyeVldqywbtbvY4P-WXb8MfVKIGZj--WAnXB3o='),
            BadgeWidget(width: 200,label: 'Sevilla',icon: null),
            BadgeWidget(label: 'Sevilla',icon: Icons.star)
        ],
      ),
    );
  }
}