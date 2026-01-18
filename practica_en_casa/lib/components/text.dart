import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('Texto básico'),
        Text(
          'Texto básico',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            backgroundColor: Colors.amber,
          ),
        ),
        Text(
          'Decorator',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            letterSpacing: 5,
          ),
        ),
        Text(
          ' Texto largo Texto largo Texto largo Texto largo Texto largo',
          style: TextStyle(wordSpacing: 3, fontSize: 30),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,

        ),
        Spacer(),
      ],
    );
  }
}
