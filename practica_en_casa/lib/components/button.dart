import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Spacer(),
        ElevatedButton(onPressed: (){}, child: 
        Text('Soy un botón'),
        onLongPress: () {
          print('Pulsado');
        },
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.amber)),
        ),
        OutlinedButton(onPressed: (){}, child: 
        Text('Otiline')),
        IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        Spacer()
      ],
    );
  }
}