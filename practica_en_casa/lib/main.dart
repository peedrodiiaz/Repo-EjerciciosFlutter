import 'package:flutter/material.dart';
import 'package:practica_en_casa/components/button.dart';
import 'package:practica_en_casa/components/images.dart';
import 'package:practica_en_casa/components/text.dart';
import 'package:practica_en_casa/layouts/column.dart';
import 'package:practica_en_casa/layouts/row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('Hola'),
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
        ),
        body:ImagesExample(),
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.add),
        ),
      )
    );
  }
}
