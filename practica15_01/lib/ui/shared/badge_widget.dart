import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? width;

  const BadgeWidget({super.key, required this.label,this.icon, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          if(icon != null)
            Icon(icon),
          Text(label)
        ],
      ),
    );
  }
}