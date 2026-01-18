import 'package:flutter/material.dart';

class RowEzample extends StatelessWidget {
  const RowEzample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: SizedBox(
      height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hola'),
            Expanded(child: Text('Hola')),
            Text('Hola'),
          ],
        ),
      ),
    );

  }
}