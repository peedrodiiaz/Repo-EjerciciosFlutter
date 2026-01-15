import 'package:flutter/material.dart';
import 'package:practica15_01/ui/location_item_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('World location')),
      body: const LocationItemWidget(),
    );
  }
}